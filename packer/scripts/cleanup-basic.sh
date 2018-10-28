#!/bin/bash

# Script used to clean up unnecessary stuff to make images smaller

# Rebuild rpm db and clear yum cache
sudo rpm --rebuilddb
sudo yum clean all
sudo rm -rf /var/cache/yum

# Clear /tmp
sudo rm -rf /tmp/*

# Clear history
history -c