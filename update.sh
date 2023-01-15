#!/bin/bash
cd /app
sudo git pull origin main
cd backend
sudo dart pub get
sudo rm bin/backend.exe --force
sudo dart compile exe bin/backend.dart -o bin/backend.exe
pm2 delete all --force
pm2 start bin/backend.exe --force
pm2 save --force
