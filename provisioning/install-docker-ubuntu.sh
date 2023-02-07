#!/bin/bash

echo -e "deb https://ftp.udc.es/ubuntu focal main restricted \n
	deb https://ftp.udc.es/ubuntu focal-updates main restricted \n
	deb https://ftp.udc.es/ubuntu focal-security main restricted \n
	deb https://ftp.udc.es/ubuntu focal universe \n
	deb https://ftp.udc.es/ubuntu focal-updates universe \n" | sudo tee /etc/apt/sources.list > /tmp/repo-log

sudo apt-get update
sudo apt-get install -y ca-certificates curl gnupg lsb-release
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list
sudo apt-get update
sudo apt-get install -y docker-ce docker-ce-cli containerd.io
sudo /usr/sbin/usermod -aG docker ${USER}
