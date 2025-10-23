# Linux Server RDP Automation

## Description
Automates the installation and configuration of xrdp on Ubuntu 24 servers for remote desktop access, improving server provisioning efficiency and reducing manual setup errors.

## Technologies
- Bash
- Ubuntu 24
- AWS EC2
- Linux system administration

## Features
- Automates xrdp installation via a Bash script
- Creates a dedicated sudo-enabled RDP user
- Configures timezone and logging best practices
- Tested across 3 EC2 instances for consistent deployment

## Usage
1. Upload `setup-xrdp.sh` to your Ubuntu server
2. Run: `bash setup-xrdp.sh`
3. Connect using your RDP client

## Impact
- Reduced manual setup time for new servers
- Ensured consistent, secure server configurations
- Improved deployment efficiency through automation
