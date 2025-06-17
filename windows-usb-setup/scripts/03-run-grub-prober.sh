#!/bin/bash
# Runs os-prober and updates GRUB

echo "Running os-prober..."
sudo os-prober
echo "Updating GRUB..."
sudo grub-mkconfig -o /boot/grub/grub.cfg
