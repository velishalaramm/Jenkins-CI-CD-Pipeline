#!/bin/bash

# 1. Download the latest installer zip
curl "https://amazonaws.com" -o "awscliv2.zip"

# 2. Unzip the package
unzip awscliv2.zip

# 3. Install or update the binary
sudo ./aws/install --update

# 4. Clean up the leftover files
rm -rf awscliv2.zip aws/

# 5. Check that it works
aws --version
