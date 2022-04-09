#!/bin/bash
sudo apt update
sudo apt install git vim -y

cd ~
# Delete the project folder
#rm -fr sineage_dist

# download latest version of project
git clone https://github.com/chevolec/sineage_dist.git
#git clone https://github.com/goodtft/LCD-show.git

mv sineage_dist/* ./
mv bashrc .bashrc
rm -fr sineage_dist

chmod +x sineage_dist.sh

#chmod -R 755 LCD-show
#cd LCD-show
#sudo ./LCD5-show

