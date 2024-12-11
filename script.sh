#!/bin/bash
sudo yum update -y
sudo amazon-linux-extras install apache2 -y
sudo amazon-linux-extras enable php8.0
sudo yum install php php-fpm -y
sudo systemctl start php-fpm
sudo systemctl enable php-fpm
sudo systemctl restart apache2
sudo systemctl enable apache2