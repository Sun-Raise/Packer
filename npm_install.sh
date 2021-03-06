#!/bin/sh

###############################################################
#Purpose      :  Node 1.8 Installation on RedHat/CentOS Linux
#Version      :  0.1
#Author       :  R Anand Reddy
#Created      :  29/12/18
###############################################################

#sudo su -

echo "################################################################"
echo "################ Node Installation Started  ####################"
echo "################################################################"


sudo yum update -y

sudo yum install wget git unzip zip python php java-1.8.0-openjdk-devel -y

sudo cd /opt/mount1

sudo mkdir -p /opt/mount1/scripts/node-1.8.12

cd /opt/mount1/scripts/node-1.8.12

sudo wget https://nodejs.org/dist/v8.12.0/node-v8.12.0-linux-x64.tar.xz

sudo tar -xvf  node-v8.12.0-linux-x64.tar.xz

sudo rm -rf /opt/mount1/scripts/node-1.8.12/node-v8.12.0-linux-x64.tar.xz

sudo ln -s /opt/mount1/scripts/node-1.8.12/node-v8.12.0-linux-x64/bin/node /bin/node

sudo ln -s /opt/mount1/scripts/node-1.8.12/node-v8.12.0-linux-x64/bin/npm /bin/npm

sudo npm install -g node-dev node-gyp 

sudo npm install forever -g

sudo ln -s /opt/mount1/scripts/node-1.8.12/node-v8.12.0-linux-x64/bin/forever /bin/forever

