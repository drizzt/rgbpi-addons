#!/bin/bash
echo "Step 2: Setting the timezone to UTC..."
sudo timedatectl set-timezone UTC
echo "Step 3: Enabling NTP for time synchronization..."
sudo timedatectl set-ntp true
echo "Step 4: Updating package lists..."
sudo apt-get update -y
echo "Step 5: Installing LXQt and related packages..."
sudo apt install lxqt-core lxqt lxde-icon-theme xorg xinit xserver-xorg-video-fbdev xserver-xorg-input-joystick --no-install-recommends -y
reboot

