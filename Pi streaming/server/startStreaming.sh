#! /bin/sh

screen -S gstreamer -d -m /home/ulab/ULab2014/Pi\ streaming/server/serverGstreamUDPweb.sh
cd /home/ulab/crtmpserver/builders/cmake/
screen -S crtmpserver -d -m ./crtmpserver/crtmpserver ./crtmpserver/crtmpserver.lua 
