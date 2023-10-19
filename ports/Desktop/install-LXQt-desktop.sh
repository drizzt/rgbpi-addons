#!/bin/bash
sudo timedatectl set-timezone UTC
sudo timedatectl set-ntp true
sudo apt-get update
sudo apt-get install lxqt-core xinit xserver-xorg-input-joystick firefox-esr -y
reboot
