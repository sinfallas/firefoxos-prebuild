#!/bin/bash
# Ubuntu 13.10
if [[ $USER != root ]]; then
echo "Error: Debe tener privilegios de ROOT"
exit 1
fi
add-apt-repository -y ppa:ubuntu-toolchain-r/test
dpkg --add-architecture i386
apt update
apt -y install build-essential libgl1-mesa-dev libglapi-mesa:i386 libgl1-mesa-glx:i386 ia32-libs android-tools-adb
ln -s /usr/lib/i386-linux-gnu/libX11.so.6 /usr/lib/i386-linux-gnu/libX11.so
ln -s /usr/lib/i386-linux-gnu/mesa/libGL.so.1 /usr/lib/i386-linux-gnu/libGL.so
apt-get -y install --no-install-recommends autoconf2.13 bison bzip2 ccache curl flex gawk gcc g++ g++-multilib gcc-4.6 g++-4.6 g++-4.6-multilib git lib32ncurses5-dev lib32z1-dev zlib1g:amd64 zlib1g-dev:amd64 zlib1g:i386 zlib1g-dev:i386 libgl1-mesa-dev libx11-dev make zip libxml2-utils gcc-4.7
update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-4.6 1 
update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-4.8 2 
update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-4.6 1 
update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-4.8 2 
update-alternatives --set gcc "/usr/bin/gcc-4.6" 
update-alternatives --set g++ "/usr/bin/g++-4.6" 
git clone git://github.com/mozilla-b2g/B2G.git
cd B2G
config.sh emulator
echo "Finalizado"
exit 0
