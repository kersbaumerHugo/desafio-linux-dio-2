#!/bin/bash

echo "Updating server"
apt-get update
apt-get upgrade -y
echo "Installling server dependencies"
apt-get install apache2 -y
apt-get install unzip -y


echo "Downloading and cloning application"

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip

echo "Saving the application in the appropriate folder"
cd linux-site-dio-main
cp -R * /var/www/html/



