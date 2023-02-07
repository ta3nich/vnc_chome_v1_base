#!/bin/bash
echo " install Chrome "
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -
echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list
apt-get update && apt-get install google-chrome-stable -y
DEBIAN_FRONTEND=noninteractive

apt update &&  apt install google-chrome-stable ffmpeg -y
sed -i 's/"$HERE\/chrome"/"$HERE\/chrome" --disable-gpu --disable-software-rasterizer --disable-dev-shm-usage --no-sandbox/g' /opt/google/chrome/google-chrome



wget https://download.cyberghostvpn.com/linux/cyberghostvpn-ubuntu-20.04-1.3.4.zip && unzip cyberghostvpn-ubuntu-20.04-1.3.4.zip && cd cyberghostvpn-ubuntu-20.04-1.3.4 
cd
mkdir /usr/local/cyberghost/openvpn/
tar xvf /root/fight/nn.tar.gz -C  /usr/local/cyberghost/openvpn/
