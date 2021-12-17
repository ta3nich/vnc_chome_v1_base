#!/usr/bin/env bash
clear
trap "echo oh;exit" SIGTERM SIGINT
echo -e "nameserver 8.8.8.8\nnameserver 8.8.4.4" >  /etc/resolv.conf
cd /root/SDA_ALL/48_firefox/

while true
do
	echo "NEW ..............."
	timeout 3m python3 48_ads.py
done
