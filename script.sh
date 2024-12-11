#!/bin/bash
sudo yum update -y
sudo yum install httpd -y
sudo amazon-linux-extras enable php8.0
sudo yum install php php-fpm -y
sudo systemctl start php-fpm
sudo systemctl enable php-fpm
sudo systemctl start httpd.service
sudo systemctl enable httpd.service
