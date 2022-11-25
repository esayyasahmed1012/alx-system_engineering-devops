#!/bin/sh -ex

V=2.0.3
curl -OL http://www.libsdl.org/release/SDL2-${V}.tar.gz
tar -zxvf SDL2-${V}.tar.gz
cd SDL2-${V}
sudo apt-get install build-essential mercurial make cmake autoconf automake \
 libtool libasound2-dev libpulse-dev libaudio-dev libx11-dev libxext-dev \
 libxrandr-dev libxcursor-dev libxi-dev libxinerama-dev libxxf86vm-dev \
 libxss-dev libgl1-mesa-dev libesd0-dev libdbus-1-dev libudev-dev \
 libgles1-mesa-dev libgles2-mesa-dev libegl1-mesa-dev
 
./configure
make
sudo make install