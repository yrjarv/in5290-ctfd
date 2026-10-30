#!/usr/bin/env bash

set -euo pipefail

head -c 64 /dev/urandom > .ctfd_secret_key

read -p "Enter domain: " domain
docker run -it --rm --name certbot -v "/etc/letsencrypt:/etc/letsencrypt" -v "/var/lib/letsencrypt:/var/lib/letsencrypt" -p 80:80 -p 443:443 certbot/certbot certonly
sudo ln -s "/etc/letsencrypt/live/$domain/privkey.pem" conf/nginx/privkey.pem
sudo ln -s "/etc/letsencrypt/live/$domain/fullchain.pem" conf/nginx/fullchain.pem

docker swarm init
docker node update --label-add "name=linux-1" $(docker node ls -q)

docker compose up -d

echo "Now everything is up and running. Good luck!"
