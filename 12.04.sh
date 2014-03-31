#!/bin/bash
#elaborado por sinfallas
# Ubuntu 12.04 / Linux Mint 13 / Debian 6
if [[ $USER != root ]]; then
echo "Error: Debe tener privilegios de ROOT"
exit 1
fi
apt-get update
apt-get -y install build-essential libgl1-mesa-dev libglapi-mesa:i386 libgl1-mesa-glx:i386 autoconf2.13 bison bzip2 ccache curl flex gawk gcc g++ g++-multilib git ia32-libs lib32ncurses5-dev lib32z1-dev libgl1-mesa-dev libx11-dev make zip android-tools-adb
ln -s /usr/lib/i386-linux-gnu/libX11.so.6 /usr/lib/i386-linux-gnu/libX11.so
ln -s /usr/lib/i386-linux-gnu/mesa/libGL.so.1 /usr/lib/i386-linux-gnu/libGL.so
git clone git://github.com/mozilla-b2g/B2G.git
cd B2G
config.sh emulator
echo "Finalizado"
exit 0
