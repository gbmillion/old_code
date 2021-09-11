#!/bin/sh
echo "This is the essid of the wap you are connected to."
sudo iwconfig |grep ESSID
echo "This is the essid of waps you are in range of."
sudo iwlist wlp3s0 scan | grep ESSID
echo "Connecting to user defined wap: $1"
sudo wpa_supplicant -B -Dwext -i wlp3s0 -c/etc/wpa_supplicant.conf
sudo dhclient wlp3s0
