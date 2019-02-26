#! /bin/sh
set -x

sudo mkfs -t ext4 /dev/xvdb
sudo mkfs.ext4 /dev/xvdb
sudo mkdir -p /opt/mount1
sudo mount /dev/xvdb /opt/mount1
sudo chmod -R 777 /etc/fstab
sudo echo "/dev/xvdb /opt/mount1 ext4 defaults,nofail 0" >> /etc/fstab
sudo chmod -R 544 /etc/fstab
