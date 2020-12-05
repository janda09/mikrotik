#!/bin/bash
# DISK - main disk name (ex sda/vda/sdb)
# URL - link to RAW image file (.img.zip) at official site of Mikrotik
# NET_INTF - name of interface (ex enp0s5/eth0)
# Janda Baper Group

mount -t tmpfs tmpfs /tmp/

cd /tmp
wget https://www.dropbox.com/s/jn809zngk3fvs1p/chr-6.46.8.img.zip

unzip chr-6.43.8.img.zip
dd if=chr-6.43.8.img of=/dev/vda bs=4M oflag=sync

echo 1 > /proc/sys/kernel/sysrq 
echo b > /proc/sysrq-trigger
reboot
