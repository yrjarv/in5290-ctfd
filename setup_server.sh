#!/usr/bin/env bash

sudo apt update
sudo apt upgrade
sudo timedatectl set-timezone Europe/Oslo
sdo apt install docker-compose-v2
sudo usermod -aG docker ubuntu
su ubuntu
head -c 64 /dev/urandom > .ctfd_secret_key

read -p "Enter domain: " domain
docker run -it --rm --name certbot -v "/etc/letsencrypt:/etc/letsencrypt" -v "/var/lib/letsencrypt:/var/lib/letsencrypt" -p 80:80 -p 443:443 certbot/certbot certonly
sudo ln -s "/etc/letsencrypt/live/$domain/privkey.pem" conf/nginx/privkey.pem
sudo ln -s "/etc/letsencrypt/live/$domain/fullchain.pem" conf/nginx/fullchain.pem

docker compose up -d
