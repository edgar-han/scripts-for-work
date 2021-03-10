#!/bin/bash

PT_IP=$1

if [ -z "$PT_IP" ]
then
  echo "ERROR: PT IP Address required"
  exit -1
fi

ssh nodeone@${PT_IP} sudo bash -c "ls /home/nodeone/ | xargs bash" 
