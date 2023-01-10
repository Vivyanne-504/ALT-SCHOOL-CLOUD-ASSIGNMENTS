#!/bin/bash
sudo apt-get update
sudo apt-get install -y nginx
sudo ufw allow 'Nginx HTTP'
echo Host: $HOSTNAME | sudo tee /var/www/html/index.html
sudo service nginx restart