#!/bin/bash
set -e
EXIT_CODE=0

if [[ ! -f /swapfile ]]
then
  dd if=/dev/zero of=/swapfile bs=128M count=8
  chmod 600 /swapfile
  mkswap /swapfile
  swapon /swapfile
  swapon -s
else
  echo "Skipping add swap. Already defined!"
fi
echo $EXIT_CODE
