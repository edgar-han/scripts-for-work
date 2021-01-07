#!/bin/bash

if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

echo "function xauthit() { xauth add \`xauth -f ~nodeone/.Xauthority list | tail -1\`; virt-manager; } " >> ~/.bashrc
