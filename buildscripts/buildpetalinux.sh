PETA_ROOT="../petalinux"
BITSTREAM="../hw_dep/system_wrapper.bit"
HDF_PATH="../hw_dep"

cd $PETA_ROOT
petalinux-config --get-hw-description=${HDF_PATH}
#petalinux-config -c rootfs
petalinux-build
petalinux-package --boot --fpga $BITSTREAM --u-boot --force
