#!/bin/bash

#Install X enviroment
sudo apt install -y --no-install-recommends xserver-xorg xserver-xorg-input-evdev 

# Download  Electron 5.0.2
cd ~
wget https://github.com/electron/electron/releases/download/v5.0.2/electron-v5.0.2-linux-armv7l.zip
mkdir Electron
cd Electron
unzip ../electron-v5.0.2-linux-armv7l.zip

# install the dependencies for Electron
sudo apt install -y --no-install-recommends libnss3 libgtkextra-dev libgtk-3-0 libxtst-dev libxss1 

#change rc.local file
sudo mv /etc/rc.local /etc/rc.local.bkp

# Copy the edited file
sudo mv /home/pi/rc.local  /etc/rc.local
sudo chmod 755 /etc/rc.local
sudo chown root:root  /etc/rc.local

#set executable autorun
chmod +x autorun.sh

#Get sineage file
#wget ftp://asdf:zxcv@192.168.68.120/$HOSTNAME.zip

mkdir display
cd display
# unzip -j ../$HOSTNAME.zip
unzip -j ../N06WgA.zip


# Clean up files


sudo shutdown -r now
