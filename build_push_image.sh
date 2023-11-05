#!/usr/bin/env bash

# yang di atas itu shebang
# yang di bawah ini untuk build container menggunakan Docker
docker build -t order-service:latest .
# mengecek daftar image
docker images
# melakukan rename terhadap image sesuai Docker Hub
docker tag order-service:latest faishalshidqi/order-service:latest
# login Docker Hub
docker login
# mengunggah image ke Docker Hub
docker push faishalshidqi/order-service:latest
