#!/bin/bash

# First install are required dependencies that are
# usually needed as well as create additional users

echo "Creating user for running applications"
sudo adduser nonprivuser

echo "Installing basic dependencies as user $(whoami)"
echo sudo yum -y docker