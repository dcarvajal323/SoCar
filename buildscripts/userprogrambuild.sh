FILE_NAME="socarmain"
H_FILE_NAME="charvideo_ioctl.h"

arm-linux-gnueabihf-g++ ../src/${FILE_NAME}.cpp ../src/${H_FILE_NAME} -std=c++11 -o ../build_include/${FILE_NAME} -I../lib/opencv/build/install/include/opencv4 -L../lib/opencv/build/install/lib -lopencv_calib3d -lopencv_imgproc -lopencv_core -lopencv_ml -lopencv_features2d -lopencv_objdetect -lopencv_flann -lopencv_video -lopencv_highgui -lopencv_imgcodecs -lpthread
#arm-linux-gnueabihf-g++ ../src/${FILE_NAME}.cpp -std=c++11 -o $FILE_NAME $(pkg-config --cflags --libs opencv)
