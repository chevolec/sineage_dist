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
#sudo mv /etc/rc.local /etc/rc.local.bkp

# Copy the edited file
#sudo mv /home/pi/rc.local  /etc/rc.local
#sudo chmod 755 /etc/rc.local
#sudo chown root:root  /etc/rc.local



#set executable autorun
chmod +x /home/pi/autorun.sh

#Get sineage file
#wget ftp://asdf:zxcv@192.168.68.120/$HOSTNAME.zip
cd
mkdir /home/pi/display
cd /home/pi/display
# unzip -j ../$HOSTNAME.zip
unzip -j /home/pi/N06WgA.zip


# Clean up files
rm electron-v5.0.2-linux-armv7l.zip
rm sineage_dist.sh
rm README.md
rm N06WgA.zip
rm install.sh
#sudo shutdown -r now

#Manually add lines to rc.local
echo 'To finish the setup, in the file /etc/rc.local, insert'
echo 'Xorg -s 0 -quiet -nocursor &'
echo 'sudo -u pi /home/pi/autorun.sh >/home/pi/auto.log 2>&1 &'
echo 'after that, restart'

# /home/pi/Electron/electron --display=:0 /home/pi/display
