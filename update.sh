#!/bin/bash
sudo rm -r /app
sudo mkdir /app
cd /app
git init
git config --global user.name "AlanRubigati"
git config --global user.email "rubigati@hotmail.com"
git remote add -f origin https://github.com/AlanRubigati/projeto-universal.git
git config core.sparseCheckout true
git sparse-checkout set backend.exe
git pull origin main
