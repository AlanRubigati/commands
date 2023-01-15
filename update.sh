#!/bin/bash
sudo rm -r /app
sudo mkdir /app
cd /app
sudo apt update
sudo apt install git
sudo git init
sudo git config --global user.name "AlanRubigati"
sudo git config --global user.email "rubigati@hotmail.com"
sudo git remote add -f origin https://github.com/AlanRubigati/projeto-universal.git
sudo git config core.sparseCheckout true
sudo git sparse-checkout set backend.exe
sudo git pull origin main
cd backend
sudo pm2 start /bin/backend.exe
