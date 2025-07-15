#!/bin/bash
# Set default policies
sudo ufw default deny incoming
sudo ufw default allow outgoing

# Allow SSH (port 22)
sudo ufw allow 22

# Deny HTTP (port 80)
sudo ufw deny 80

# Enable UFW
sudo ufw enable

# Check UFW status
sudo ufw status verbose
