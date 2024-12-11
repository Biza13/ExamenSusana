#!/bin/bash
sudo yum update -y
sudo amazon-linux-extras install apache2 -y
sudo amazon-linux-extras enable php8.0
sudo yum install php php-fpm -y
sudo systemctl start php-fpm
sudo systemctl enable php-fpm
sudo systemctl restart apache2
sudo systemctl enable apache2

sudo yum install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc
sudo yum install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin