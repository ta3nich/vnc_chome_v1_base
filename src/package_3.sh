#!/bin/bash

### every exit != 0 fails the script

echo -e "nameserver 8.8.8.8\nnameserver 8.8.4.4" >  /etc/resolv.conf

ln -s /usr/bin/python3 /usr/bin/python
git clone https://github.com/GH0STAV0/SDA_ALL.git
cp /root/install_add/geckodriver22 /usr/bin/
export NO_VNC_HOME=/usr/share/novnc
#rm /headless/*.bz2*

git clone https://github.com/GH0STAV0/ALL_HCL.git
service tor restart

echo "Installing  firefox "


whoami

mkdir -p /root/EXTRAT/
mkdir /root/EXTRAT/firefox-49.0b9/
mkdir /root/EXTRAT/firefox-53.0.2/
mkdir /root/EXTRAT/firefox-53.0b9/
mkdir /root/EXTRAT/firefox-57.0.1/
mkdir /root/EXTRAT/firefox-58.0.1/
mkdir /root/EXTRAT/firefox-59.0.1/
mkdir /root/EXTRAT/firefox-60.0.1esr/
mkdir /root/EXTRAT/firefox-61.0.1/
mkdir /root/EXTRAT/firefox-63.0.1/
#https://ftp.mozilla.org/pub/firefox/releases/53.0.2/linux-x86_64-EME-free/en-GB/firefox-53.0.2.tar.bz2

echo "Install Package -firefox-53.0b9.tar.bz2"
#https://ftp.mozilla.org/pub/firefox/releases/49.0b9/linux-x86_64/en-US/firefox-49.0b9.tar.bz2



echo "Install Package -firefox-53.0b9.tar.bz2"

echo "Install bash color"

apt-get clean autoclean
apt-get autoremove --yes
apt-get autoclean 
apt-get autoremove --yes
rm -rf /var/lib/apt/lists/*
