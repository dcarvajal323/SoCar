PETA_ROOT="../petalinux"
BOOT_PART="/media/ramsey/BOOT"
ROOT_PART="/media/ramsey/ROOT"
BUILD_INC="../build_include"

cd $PETA_ROOT
sudo cp images/linux/BOOT.BIN $BOOT_PART
sudo cp images/linux/image.ub $BOOT_PART
umount /mnt
sudo mount images/linux/rootfs.ext4 /mnt -o loop
sudo rm -r ${ROOT_PART}/*
sudo cp -r /mnt/* $ROOT_PART
sudo cp -r ${BUILD_INC}/* ${ROOT_PART}/home
sudo umount /mnt
