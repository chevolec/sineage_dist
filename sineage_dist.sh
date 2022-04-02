#!/bin/bash

#Install X enviroment
sudo apt install -y --no-install-recommends xserver-xorg xserver-xorg-input-evdev 

# Download  Electron 5.0.2
cd ~
wget https://github.com/electron/electron/releases/download/v5.0.2/electron-v5.0.2-linux-armv7l.zip
mkdir electron
cd electron
unzip ../electron-v5.0.2-linux-armv7l.zip

# install the dependencies for Electron
sudo apt install -y --no-install-recommends libnss3 libgtkextra-dev libgtk-3-0 libxtst-dev libxss1 

#change rc.local file
mv /etc/rc.local /etc/rc.local.bkp 