#!/usr/bin/env bash

# yang di atas itu shebang
# yang di bawah ini untuk build container menggunakan Docker
docker build -t item-app:v1 .
# mengecek daftar image
docker images
# melakukan rename terhadap image sesuai Docker Hub
docker tag item-app:v1 faishalshidqi/item-app:v1
# login Docker Hub
docker login
# mengunggah image ke Docker Hub
docker push faishalshidqi/item-app:v1
