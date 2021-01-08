#!/bin/bash

PT_IP=$1

if [ -z "$PT_IP" ]
then
  echo "ERROR: PT IP Address required"
  exit -1
fi

ssh nodeone@${PT_IP} bash -c "ls pt-* | xargs bash"
