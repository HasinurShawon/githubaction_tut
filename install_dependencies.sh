#!/bin/bash

set -e  # fail fast

sudo apt update -y
echo "-------Installing Nginx-------"
sudo apt install -y nginx
sudo systemctl start nginx
echo "-------Nginx Installed-------"

echo "-------Installing Node.js-------"
curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash -
sudo apt install -y nodejs

sudo npm install -g pm2

echo "Showing running PM2 processes..."
pm2 list || echo "No PM2 processes running yet"