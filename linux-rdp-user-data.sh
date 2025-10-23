#!/bin/bash
#exec > >(tee /var/log/user-data.log | logger -t user-data -s 2>/dev/console) 2>&1

echo "===== Starting user-data script ====="

# Update system
apt update && apt upgrade -y

# Install xrdp and Firefox
apt install -y xrdp firefox

# Install desktop environment (required for RDP GUI)
DEBIAN_FRONTEND=noninteractive apt install -y ubuntu-desktop

# Enable and start xrdp
systemctl enable xrdp
systemctl start xrdp

# Set timezone
timedatectl set-timezone America/New_York

# Create RDP user
adduser --disabled-password --gecos "" lizette

# Add user to sudo group
usermod -aG sudo lizette

# Set correct permissions
chown -R lizette:lizette /home/lizette

echo "===== Finished user-data script ====="