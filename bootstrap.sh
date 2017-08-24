#!/bin/bash
#
# Build and install npm and nodejs.
# Build node_modules as cloud scheduler GUI distro
# 

# googe drive link for rolls/PS3/
export SURL="https://drive.google.com/open?id=0BzgozEGuMWotMXJWekIwOGh4Mlk"

. /opt/rocks/share/devel/src/roll/etc/bootstrap-functions.sh

# install prerequisites for devtoolset-3, available with os roll
yum install audit-libs-python 
yum install libsemanage-python 
yum install setools-libs-python 
yum install policycoreutils-python 

# install devtoolset-3, needed for npm
(cd src/devtoolset3; 
rpm -i scl-utils-20120927-23.el6_6.x86_64.rpm 
rpm -i devtoolset-3-runtime-3.1-12.el6.x86_64.rpm 
rpm -i devtoolset-3-binutils-2.24-18.el6.x86_64.rpm 
rpm -i devtoolset-3-binutils-devel-2.24-18.el6.x86_64.rpm 
rpm -i devtoolset-3-gcc-4.9.2-6.el6.x86_64.rpm 
rpm -i devtoolset-3-libstdc++-devel-4.9.2-6.el6.x86_64.rpm 
rpm -i devtoolset-3-gcc-c++-4.9.2-6.el6.x86_64.rpm 
)

# install nodejs, needed for running npm
compile_and_install nodejs
