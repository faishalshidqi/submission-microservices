#!/usr/bin/env bash

# yang di atas itu shebang
# yang di bawah ini untuk build container menggunakan docker
docker build -t faishalshidqi/karsajobs:latest .
# login Docker Hub
docker login
# mengunggah image ke Docker Hub
docker push faishalshidqi/karsajobs:latest
