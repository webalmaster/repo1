#!/usr/bin/env bash
#####################
#Step 1: Install prerequisites
#####################
sudo apt update
sudo apt full-upgrade
sudo apt-get update
sudo apt-get install curl
sudo apt install docker.io
docker --version
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose -version

#####################
#Step 2: Download and install validator
#####################

curl -O https://gitlab.com/shardeum/validator/dashboard/-/raw/main/installer.sh && chmod +x installer.sh && ./installer.sh

#####################
#Step 3: Open validator CLI
#####################
cd
cd .shardeum
./shell.sh

#####################
#Step 4: Open validator GUI
#####################
operator-cli gui start
operator-cli start
