#!/bin/bash

# Script to update packages to most recent version
# in case the base image doesnt already have it

echo "Updating packages..."
sudo yum -y update