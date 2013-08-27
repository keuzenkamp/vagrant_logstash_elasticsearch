#!/bin/bash
# setup.sh

yum update -y
yum groupinstall "Development Tools" -y
yum install screen vim wget tcl -y
yum install java-1.7.0-openjdk-devel.x86_64 java-1.7.0-openjdk.x86_64 -y

if [ ! -f setup.done ];
  then
    cd /home/vagrant/
    tar zxvf redis-2.6.15.tar.gz
    mv redis-2.6.15/ redis/
    cd redis/
    make
    make test
fi

touch setup.done