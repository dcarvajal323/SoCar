chroot /mnt
mkdir /usr/local
cp -r opencv/* /usr/local
echo "/usr/local/lib" >> /etc/ld.so.conf
chmod +x socarmain
