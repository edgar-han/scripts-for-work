#!/bin/bash

# Download win images from NFS to image director

MOUNT_DIR=/media/windows_images
DEST_DIR=/home/nodeone/images
WIN10_32_DIR=STF/Base-Windows-10-32bit
WIN10_64_DIR=STF/Base-Windows-10-64bit
WIN7_32_DIR=STF/Base-Windows-7-32bit
WIN7_64_DIR=STF/Base-Windows-7-64bit

if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

mkdir /media/windows_images
mount -t nfs 192.168.72.25:/DEVOPS_PROD_STF_NFS_SHARE /media/windows_images

echo "copying files"
cp ${MOUNT_DIR}/${WIN10_32_DIR}/*-flat.vmdk $DEST_DIR && echo "done." &
