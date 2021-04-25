FILE_NAME="socarmain"

arm-linux-gnueabihf-g++ ../src/${FILE_NAME}.cpp -std=c++11 -o $FILE_NAME -I../lib/opencv/build/install/include -L../lib/opencv/build/install/lib -lopencv_calib3d -lopencv_imgproc -lopencv_core -lopencv_ml -lopencv_features2d -lopencv_objdetect -lopencv_flann -lopencv_video -lopencv_highgui -lopencv_imgcodecs
#arm-linux-gnueabihf-g++ ../src/${FILE_NAME}.cpp -std=c++11 -o $FILE_NAME $(pkg-config --cflags --libs opencv)
