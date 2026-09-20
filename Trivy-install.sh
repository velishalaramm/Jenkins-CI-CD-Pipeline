#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

echo "==========================================="
echo " Installing Trivy on Amazon Linux 2023"
echo "==========================================="

# 1. Add the official Trivy RPM repository
echo "--> Configuring Trivy RPM repository..."
sudo tee /etc/yum.repos.d/trivy.repo << 'EOF'
[trivy]
name=Trivy repository
baseurl=https://github.io
gpgcheck=1
enabled=1
gpgkey=https://aquasecurity.github.io/trivy-repo/rpm/public.key
EOF

# 2. Refresh package metadata cache
echo "--> Updating package cache..."
sudo dnf makecache

# 3. Install Trivy
echo "--> Installing Trivy package..."
sudo dnf install -y trivy

# 4. Verify the installation
echo "==========================================="
echo " Installation Complete!"
echo "==========================================="
trivy --version
