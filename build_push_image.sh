#!/usr/bin/env bash

# yang di atas itu shebang
# yang di bawah ini untuk build container menggunakan Docker
docker build -t shipping-service:latest .
# mengecek daftar image
docker images
# melakukan rename terhadap image sesuai Docker Hub
docker tag shipping-service:latest faishalshidqi/shipping-service:latest
# login Docker Hub
docker login
# mengunggah image ke Docker Hub
docker push faishalshidqi/shipping-service:latest
