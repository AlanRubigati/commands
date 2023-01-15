#!/bin/bash
cd /app
sudo git pull origin main
cd backend
sudo dart pub get
sudo dart compile exe bin/backend.dart -o bin/backend.exe
pm2 delete all
pm2 start bin/backend.exe
