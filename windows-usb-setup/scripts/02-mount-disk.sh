#!/bin/bash
# Mounts /dev/sdX1 to /mnt/usb

echo "Mounting USB drive..."
sudo mount /dev/sdX1 /mnt/usb || echo "Mount failed. Please check device path."
