#!/bin/bash

# Script for installing factorio

echo "Installing factorio..."

echo "Creating user factorio"
sudo useradd factorio

echo "Getting binaries and creating directories..."
sudo su - factorio
mkdir -p s3/save s3/config
curl -L "https://www.factorio.com/get-download/0.16.51/headless/linux64" -o ./factorio.tar.gz
tar xvf factorio.tar.gz
ln -s /home/factorio/s3/save /home/factorio/factorio/save
cp ./factorio/data/server-settings.example.json ./factorio/config/server-settings.json

if [ ! -f /home/factorio/save/packerfactorio.zip ]
then
  /home/factorio/bin/x64/factorio --create /home/factorio/save/packerfactorio.zip
fi

#./factorio/bin/x64/factorio --start-server \ 
#  ./factorio/save/packerfactorio.zip \ 
#  --server-settings ./factorio/config/server-settings.json