set(GCC_COMPILER_VERSION "" CACHE STRING "GCC Compiler version")
set(SOFTFP FALSE)
set(GNU_MACHINE "arm-linux-gnueabi" CACHE STRING "GNU compiler triple")
include("${CMAKE_CURRENT_LIST_DIR}/platforms/linux/arm.toolchain.cmake")

set(CMAKE_SYSTEM_NAME Linux)
set(CMAKE_SYSTEM_PROCESSOR arm)

set(GNU_MACHINE "arm-linux-gnueabi" CACHE STRING "GNU compiler triple")

#set(CMAKE_INSTALL_PREFIX /usr/arm-linux-gnueabihf)

set(tools /usr)
set(CMAKE_C_COMPILER ${tools}/bin/arm-linux-gnueabihf-gcc)
set(CMAKE_CXX_COMPILER ${tools}/bin/arm-linux-gnueabihf-g++)

