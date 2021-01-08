#!/bin/bash

PT_IP=$1

if [ -z "$PT_IP" ]
then
  echo "ERROR: need to provide PT IP Address"
  exit -1
fi

scp pt-* nodeone@${PT_IP}:/home/nodeone/
