#!/bin/bash
cd /app
sudo git pull origin main
cd backend
sudo dart pub get
sudo rm bin/backend.exe
sudo dart compile exe bin/backend.dart -o bin/backend.exe
pm2 delete all -f
pm2 start bin/backend.exe -f
