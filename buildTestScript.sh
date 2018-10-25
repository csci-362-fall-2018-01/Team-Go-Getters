#This is a bash script that compiles Celestia from source code found here 'https://#github.com/CelestiaProject/Celestia' assuming you are building in Ubuntu 18.04
#
#
# Written by Team-Go-Gitters


#Navigative to the file path of Celestia-main in a terminal window

#!/bin/bash
chmod +x buildTestScript.sh


sudo apt-get install freeglut3-dev libjpeg-dev libpng-dev build-essential automake libgtkglext1-dev libredline-dev liblua5.1-0-dev liblua50-dev liblua50-dev liblualib50-dev

sudo apt-get update
sudo apt-get install autoconf libtool-bin

autoreconf -v -i

sudo ./configure --with-lua=windows/inc/lua --with-gtk

sudo make -j4
sudo make install



