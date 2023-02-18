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
mkdir -p /usr/local/cyberghost/
mkdir -p /usr/local/cyberghost/openvpn/

tar xvf /root/fight/nn.tar.gz -C  /usr/local/cyberghost/openvpn/
#cd /usr/local/cyberghost/openvpn/cyberghostvpn-ubunt
cd /usr/local/cyberghost/openvpn/cyberghostvpn-ubuntu/
#sudo bash install.sh  <<< $'sabaki@live.com\n0506824174aA*\n'
echo " install Chrome ****************************************************************"
#sudo bash install.sh  <<< $'nitrofish383@gmail.com\n041792Ab!\n'


# wget https://download.cyberghostvpn.com/linux/cyberghostvpn-ubuntu-20.04-1.3.4.zip && unzip cyberghostvpn-ubuntu-20.04-1.3.4.zip && cd cyberghostvpn-ubuntu-20.04-1.3.4  
# sudo cyberghostvpn --setup <<< $'Y\nY\nsabaki@live.com\n0506824174aA*\n'
# sudo cyberghostvpn --setup <<< $'Y\nY\nnitrofish383@gmail.com\n041792Ab!\n'
