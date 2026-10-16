#!/usr/bin/env bash

set -euo pipefail

sudo apt update
sudo apt upgrade
sudo timedatectl set-timezone Europe/Oslo
sudo apt install -y docker-compose-v2
sudo usermod -aG docker ubuntu

echo "Now log out and in again"
