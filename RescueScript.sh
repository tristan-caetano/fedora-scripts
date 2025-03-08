sudo mount --bind /dev /mnt/root/dev
sudo mount --bind /proc /mnt/root/proc
sudo mount --bind /sys /mnt/root/sys
sudo cp /etc/resolv.conf /mnt/root/etc/resolv.conf

sudo chroot /mnt/root
# akmods --rebuild --kernel 6.13.5-200.fc41.x86_64 --force
# dracut --kver 6.13.5-200.fc41.x86_64 --force
# If the uname -r is different, find the right one with dnf list | grep kernel
