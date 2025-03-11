#!/usr/bin/bash

# Install dependencies for scrcpy via apt
sudo apt install -y ffmpeg libsdl2-2.0-0 adb wget meson ninja-build libsdl2-dev libavcodec-dev libavdevice-dev libavformat-dev libavutil-dev libswresample-dev libusb-1.0-0 libusb-1.0-0-dev

pushd ~/Workspace/Software

# clone scrcpy from github
git clone https://github.com/Genymobile/scrcpy
cd scrcpy
./install_release.sh

chmod +x /usr/local/share/scrcpy/scrcpy-server
popd

echo "Scrcpy installed. Please reload your PATH via \"source ~/.bashrc\""