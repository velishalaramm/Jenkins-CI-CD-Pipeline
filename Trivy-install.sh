#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

echo "==========================================="
echo " Installing Trivy on Amazon Linux 2023"
echo "==========================================="

curl -sfL https://raw.githubusercontent.com/aquasecurity/trivy/main/contrib/install.sh | sudo sh -s -- -b /usr/local/bin v0.74.0

# 4. Verify the installation
echo "==========================================="
echo " Installation Complete!"
echo "==========================================="
trivy --version
