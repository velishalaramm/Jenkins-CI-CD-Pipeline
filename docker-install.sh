#!/bin/bash


# Exit immediately if a command exits with a non-zero status
set -e

echo "==========================================="
echo " Installing Docker on Amazon Linux 2023"
echo "==========================================="

# 1. Update system packages
echo "--> Updating system packages..."
sudo dnf update -y

# 2. Install Docker
echo "--> Installing Docker..."
sudo dnf install -y docker

# 3. Start and enable Docker service
echo "--> Starting and enabling Docker service..."
sudo systemctl start docker
sudo systemctl enable docker

# 4. Add current user to the docker group
echo "--> Adding user '$USER' to the docker group..."
sudo usermod -aG docker $USER
