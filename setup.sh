#!/bin/sh

# utils
apt-get update -y
apt-get upgrade -y
apt-get install -y curl git nano  python-pip docker-compose  docker-ce docker-ce-cli containerd.io

# Install packages to allow apt to use a repository over HTTPS:
apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg2 \
    software-properties-common

# Add Docker’s official GPG key:
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -

add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/debian \
   $(lsb_release -cs) \
   stable"

docker network create hubinternal

docker volume create node-red-volume
docker volume create influxdb-volume
docker volume create grafana-volume

docker-compose up
