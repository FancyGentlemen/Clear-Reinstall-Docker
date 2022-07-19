#!/bin/bash

echo "Starting docker_reborn.sh..."
#Shows how much storage you have before the script
df -h
#Stops all applications of docker
sudo systemctl stop docker.socket
sudo systemctl stop docker
sudo systemctl stop containerd
#Deletes docker software
sudo apt-get purge docker-engine
sudo apt-get autoremove --purge docker-engine
sudo rm -rf /var/lib/docker # This deletes all images, containers, and volumes
sudo apt-get remove docker docker-engine docker.io containerd runc
#Make sure no key softwares/libraries were lost in the purge
sudo apt-get update
sudo apt-get install \
   ca-certificates \
   curl \
   gnupg \
   lsb-release
#Add Docker's offical GPG key
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
#Set up repository
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
#Install Docker
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin
#Show Docker is working
sudo docker run hello-world
#Show how much storage is now available after the script ends
df -h
echo "Ending docker_reborn.sh"