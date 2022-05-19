#!/bin/bash

fallocate -l 32G /swapfile
#dd if=/dev/zero of=/swapfile bs=$1G count=4
chmod 600 /swapfile
mkswap /swapfile
swapon /swapfile



