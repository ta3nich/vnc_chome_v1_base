#!/bin/bash
echo " install Chrome "
DEBIAN_FRONTEND=noninteractive
apt update &&  apt install google-chrome-stable ffmpeg -y
sed -i 's/"$HERE\/chrome"/"$HERE\/chrome" --disable-gpu --disable-software-rasterizer --disable-dev-shm-usage --no-sandbox/g' /opt/google/chrome/google-chrome

