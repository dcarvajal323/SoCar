#include <opencv2/opencv.hpp>
#include <opencv2/imgproc/imgproc.hpp>
#include <iostream>
#include <cmath>
#include <pthread.h>
#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <poll.h>
#include <fcntl.h>
#include <errno.h>
#include <unistd.h>
#include <sys/mman.h>
#include <sys/ioctl.h>

#include "charvideo_ioctl.h"


using namespace std;
using namespace cv;

#define STEERING_DRIVER "/proc/pwmgen"
#define SPEED_DRIVER "/proc/pwmgen"
#define CAMERA_DRIVER "/dev/video"
#define IMAGE_NAME "cameraout.ppm"
#define PWM_RANGE 1048575
#define BUFF_SIZE 20

void *setMotorSpeed(void *in);

/*
	C++ Code based on the Python code available at
	https://towardsdatascience.com/deeppicar-part-4-lane-following-via-opencv-737dd9e47c96

*/

Mat edgeDetect(Mat image);
Mat croppedImage(Mat image);
vector<Vec4i> detectSegments(Mat image);
vector<Vec4i> avgSlopeIntercept(Mat image, vector<Vec4i> segs);
Vec4i makePoints(Mat image, float slope, float intercept);
int findDuty(int angle);

int main() {
	pthread_t speedThread;
	//pthread_create(&speedThread, NULL, &setMotorSpeed, NULL);	

	while (1) {

		int fd;
		fd = open(CAMERA_DRIVER, O_RDONLY);
		if (fd < 0) {
			printf("Can't open %s\n", CAMERA_DRIVER);
			return -1;
		}

		//Print the VDMA's status to kernel log
		ioctl(fd, CHARVIDEO_IOCSTATUS);

		//Get the image sizes from the video driver
		int h, w, l;
		h = ioctl(fd, CHARVIDEO_IOCQHEIGHT);
		w = ioctl(fd, CHARVIDEO_IOCQWIDTH);
		l = ioctl(fd, CHARVIDEO_IOCQPIXELLEN);

		unsigned char buf[h * w * l];
		read(fd, buf, w * h * l);
		close(fd);

		char filename[100];
		sprintf(filename, "%s", IMAGE_NAME);
		FILE *outimg = fopen(filename, "wt");

		//if the pixel length is only 1 byte, then the image is grayscale (ppm format 5)
		if (l == 1)
			fprintf(outimg, "P5\n%d %d\n%d\n", w, h, 255);
		else
			fprintf(outimg, "P6\n%d %d\n%d\n", w, h, 255);

		printf("Opened %s\n", filename);

		//The images are stored in the VDMAs in the BGR format so it must be
		//changed to RGB for human understandable images

		if (l != 1) { //BGR to RGB
			for (int i = 0; i < w * h * l; i += 3) {
				uint8_t aux = buf[i + 2];
				buf[i + 2] = buf[i];
				buf[i] = aux;
			}
		}

		fwrite(buf, 1, w * h * l, outimg);

		fclose(outimg);


		//Load the image
		Mat img = imread(IMAGE_NAME);
		//Mat img = imread("resizedOrig.jpeg");
		//Mat img = imread("oneLane.jpg");
		//Mat img = imread("road-image.jpg");

		Mat img_hsv;

		//Isolate edges
		Mat edges = edgeDetect(img);

		//In lane navigation, only bottom half of image is needed
		//Only the lanes close to the car matter
		//Can crop out the top half
		Mat cropped = croppedImage(edges);
		//imshow("Cropped", cropped);

		//Now need to detect line segments
		//Uses Hough transform
		vector<Vec4i> segs = detectSegments(cropped);

		//Find the average slope/intercept of the left and right lanes
		vector<Vec4i> avgLines = avgSlopeIntercept(img, segs);

		//Draw lines onto img
		for (int i = 0; i < avgLines.size(); i++) {
			int x1 = avgLines[i][0];
			int y1 = avgLines[i][1];
			int x2 = avgLines[i][2];
			int y2 = avgLines[i][3];
			Point p1(x1, y1);
			Point p2(x2, y2);

			line(img, p1, p2, Scalar(0, 255, 0), 2, LINE_8);
		
		}
		//imshow("Out", img);
	
		//Steering
		//If two lines found, can compute direction by averaging endpoints
		//Dir line will be from bottom middle, to that midpoint
		int xOffset;
		int yOffset;
		if (avgLines.size() == 2) {
			int Lx1 = avgLines[0][2];
			int Rx1 = avgLines[1][2];
			int mid = img.cols / 2;
			xOffset = (Lx1 + Rx1) / 2 - mid;
			yOffset = img.rows / 2;
		}

		//If only one lane found, need to turn hard to other side
		//Can do by making dir line same slope as seen line
		else if (avgLines.size() == 1) {
			int Fx1 = avgLines[0][0];
			int Fx2 = avgLines[0][2];
			xOffset = Fx2 - Fx1;
			yOffset = img.rows / 2;
		}

		//Offsets are calculated, now need to find angle
		double angToMid = atan((double)xOffset / (double)yOffset);
		//Con to degrees
		int angDegree = (int)(angToMid * 180.0 / CV_PI);

		int steeringAngle = angDegree + 90;
	

		if (steeringAngle < 45) {
			steeringAngle = 45;
		}
		else if (steeringAngle > 135) {
			steeringAngle = 135;
		}

		//Find Duty Cycle Percentage
		//12% is fully left
		//6% is fully right
		int dutyCount = findDuty(steeringAngle);


		//Display steering line
		double steerRad = (double)steeringAngle / 180.0 * CV_PI;
		int sx1 = img.cols / 2;
		int sy1 = img.rows;
		int sx2 = (int)(sx1 - img.rows / 2 / tan(steerRad));
		int sy2 = img.rows / 2;
		Point ps1(sx1, sy1);
		Point ps2(sx2, sy2);

		line(img, ps1, ps2, Scalar(255, 0, 0), 2, LINE_8);
		imwrite("out.jpg", img);

		char outString[BUFF_SIZE];
		sprintf(outString, "%d", dutyCount);
		
		cout << steeringAngle << "\n";

		FILE *steeringDriver = nullptr;//fopen(STEERING_DRIVER, "w");
		if (steeringDriver) {
			fputs(outString, steeringDriver);
			fseek(steeringDriver, 0, SEEK_SET);
			fclose(steeringDriver);
		}
	}

	return 0;
}

void *setMotorSpeed(void *in) {
	char inBuff[BUFF_SIZE];

	while(1) {
		fgets(inBuff, BUFF_SIZE, stdin);
		
		FILE *speedDriver = fopen(SPEED_DRIVER, "w");
		if (speedDriver) {
			fputs(inBuff, speedDriver);
			fseek(speedDriver, 0, SEEK_SET);
		}
		
		fclose(speedDriver);
	}
}

int findDuty(int angle) {
	int adjusted = 90 - angle;
	float adjuster = (2.384/90.0) * adjusted;
	float dutyCycle = 7.152 + adjuster;
	float perc = dutyCycle / 100.00;
	int count = (int)(perc * PWM_RANGE);

	return count;
}

vector<Vec4i> avgSlopeIntercept(Mat image, vector<Vec4i> segs) {
	//Goal is to combine the segments into left and right lane
	//If slope < 0, left lane
	//Slope > 0, right lane
	int height = image.rows;
	int width = image.cols;

	float boundary = 0.33;
	//Left should be on left 2/3
	int leftBoundary = width * (1 - boundary);
	//Right should be on right 2/3 of image
	int rightBoundary = width * boundary;

	vector<float> leftSlopes;
	vector<float> rightSlopes;
	vector<float> leftInts;
	vector<float> rightInts;

	//Iterate through each segment in segs
	for (auto it = begin(segs); it != end(segs); ++it){
		int x1 = it->val[0];
		int y1 = it->val[1];
		int x2 = it->val[2];
		int y2 = it->val[3];

		if (x1 == x2) {
			//Vertical line segment
			continue;
		}
		//Not vertical
		//Find slope/intercept
		int rise = y2 - y1;
		int run = x2 - x1;
		float slope = (float)rise / (float)run;
		float intercept = y1 - (slope * x1);

		if (slope < 0) {
			//left lane
			if (x1 < leftBoundary && x2 < leftBoundary) {
				leftSlopes.push_back(slope);
				leftInts.push_back(intercept);
			}
		}
		else {
			//right lane
			if (x1 > rightBoundary && x2 > rightBoundary) {
				rightSlopes.push_back(slope);
				rightInts.push_back(intercept);
			}
		}
	}

	//Get avgs of the left and right segs
	float avgLSlope;
	float avgRSlope;
	float avgLInt;
	float avgRInt;
	float temp = 0;
	for (int i = 0; i < leftSlopes.size(); i++) {
		temp = temp + leftSlopes[i];
	}
	avgLSlope = temp / leftSlopes.size();
	temp = 0;

	for (int i = 0; i < rightSlopes.size(); i++) {
		temp = temp + rightSlopes[i];
	}
	avgRSlope = temp / rightSlopes.size();
	temp = 0;

	for (int i = 0; i < leftInts.size(); i++) {
		temp = temp + leftInts[i];
	}
	avgLInt = temp / leftInts.size();

	temp = 0;
	for (int i = 0; i < rightInts.size(); i++) {
		temp = temp + rightInts[i];
	}
	avgRInt = temp / rightInts.size();
	temp = 0;

	//Averages have been found
	//Checks to make sure it sees at least one seg first
	vector<Vec4i> lines;

	if (leftSlopes.size() > 0) {
		Vec4i left = makePoints(image, avgLSlope, avgLInt);
		lines.push_back(left);
	}

	if (rightSlopes.size() > 0) {
		Vec4i right = makePoints(image, avgRSlope, avgRInt);
		lines.push_back(right);
	}

	return lines;
}

Vec4i makePoints(Mat image, float slope, float intercept) {
	Vec4i line;
	int height = image.rows;
	int width = image.cols;

	int y1 = height;
	line[1] = y1;
	int y2 = (int)(y1*0.5);
	line[3] = y2;

	int x1 = (int)((y1 - intercept) / slope);
	if (x1 > 2 * width) {
		x1 = 2 * width;
	}
	if (x1 < -1 * width) {
		x1 = -1 * width;
	}

	line[0] = x1;

	int x2 = (int)((y2 - intercept) / slope);
	if (x2 > 2 * width) {
		x2 = 2 * width;
	}
	if (x2 < -1 * width) {
		x2 = -1 * width;
	}
	line[2] = x2;

	return line;
}

Mat edgeDetect(Mat image) {
	//Image converted to HSV space
	Mat img_hsv;
	cvtColor(image, img_hsv, COLOR_BGR2HSV);
	//Lifting out the blue
	//Blue is in range 60-150 in OpenCV (Others may use 120-300 range)
	Mat mask;
	inRange(img_hsv, Scalar(60, 40, 40), Scalar(150, 255, 255), mask);
	//mask is a black and white image, with white where there was blue
	//imshow("Mask", mask);
	//Edge detection
	Mat edges;
	Canny(mask, edges, 200, 400);
	//imshow("Edges", edges);

	return edges;
}

Mat croppedImage(Mat image) {
	//Get size of image
	int rows = image.rows;
	int cols = image.cols;
	Point p1(0, 0);
	Point p2(cols, rows / 2);
	rectangle(image, p1, p2, Scalar(0, 0, 0), -1, LINE_8);

	return image;
}

vector<Vec4i> detectSegments(Mat image) {
	int rho = 1;	//Distance precision in num pixels

	//Angular precision
	float angle = CV_PI / 180;	//1 degree in radians

	//Threshold for something to be considered a segment
	int numVotes = 10;

	//Min num pixels for it to be a line
	int minLineLength = 8;	

	//maximum pixels that segments can be separated by and still be the same segment
	int maxLineGap = 4;

	vector<Vec4i> segs;
	HoughLinesP(image, segs, rho, angle, numVotes, minLineLength, maxLineGap = 4);

	return segs;
}
