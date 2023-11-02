#!/usr/bin/env bash
docker build -t item-app:v1 .
docker images
docker tag item-app:v1 faishalshidqi/item-app:v1
docker login
docker push faishalshidqi/item-app:v1
