#!/usr/bin/env bash

set -euo pipefail

sudo apt update
sudo apt upgrade -y
sudo timedatectl set-timezone Europe/Oslo
sudo apt install docker-compose-v2 -y
sudo usermod -aG docker ubuntu

echo "Now log out and in again"
