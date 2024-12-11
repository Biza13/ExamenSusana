#!/bin/bash
sudo yum update -y
sudo yum install httpd -y
sudo amazon-linux-extras enable php8.0
sudo yum install php php-fpm -y
sudo systemctl start php-fpm
sudo systemctl enable php-fpm
sudo systemctl start httpd.service
sudo systemctl enable httpd.service

sudo yum install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc
sudo yum install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

docker run --rm -v "$(pwd):/data" "phpdoc/phpdoc:3"

docker run --rm -v "$(pwd):/data" phpdoc/phpdoc:3 -d ./var/www/html/modelo -t ./var/www/html/docs
