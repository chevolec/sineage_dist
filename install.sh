#!/bin/bash
sudo apt update
sudo apt install git

cd ~
# Delete the project folder
#rm -fr sineage_dist

# download latest version of project
git clone https://github.com/chevolec/sineage_dist.git

mv bashrc .bashrc

chmod +x install_sineage.sh
./install_sineage.sh