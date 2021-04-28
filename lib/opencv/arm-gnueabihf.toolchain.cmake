set(GCC_COMPILER_VERSION "" CACHE STRING "GCC Compiler version")
set(SOFTFP FALSE)
set(GNU_MACHINE "arm-linux-gnueabi" CACHE STRING "GNU compiler triple")
include("${CMAKE_CURRENT_LIST_DIR}/platforms/linux/arm.toolchain.cmake")
