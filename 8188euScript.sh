#!/bin/bash
sudo apt-get install build-essential linux-headers-generic git
mkdir ~/RTL8188EU
cd ~/RTL8188EU
git clone git://github.com/lwfinger/rtl8188eu
cd ~/RTL8188EU/rtl8188eu
make
sudo make install
sudo cp -v ~/RTL8188EU/rtl8188eu/rtl8188eufw.bin /lib/firmware/rtlwifi/
sudo depmod -a
sudo update-initramfs -u
sudo modprobe 8188eu
sudo reboot