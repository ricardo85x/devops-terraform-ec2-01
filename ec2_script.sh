#!/bin/bash
echo Updating server
echo "......................."
sudo apt-get update
sudo apt-get upgrade -y

echo Updating Apache
echo "......................."
sudo apt-get install -y apache2

echo Cloning repository
echo "......................."
sudo git clone https://github.com/ricardo85x/mundo-invertido

echo Copying files to apache public folder
echo "......................."
sudo cp -rf ./mundo-invertido/* /var/www/html/
sudo rm -rf mundo-invertido

echo "Done!"