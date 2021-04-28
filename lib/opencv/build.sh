cd build
cmake -D CMAKE_VERBOSE_MAKEFILE=ON \
-D CMAKE_GENERATE_PKGCONFIG=YES \
-D CMAKE_TOOLCHAIN_FILE=../arm-gnueabihf.toolchain.cmake ..
make -j3
sudo make install
