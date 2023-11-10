#!/bin/bash
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
sudo timedatectl set-timezone UTC
sudo timedatectl set-ntp true
curl -1sLf 'https://dl.cloudsmith.io/public/moonlight-game-streaming/moonlight-qt/setup.deb.sh' | distro=raspbian codename=bullseye sudo -E bash
sudo dpkg --configure -a
sudo apt install moonlight-qt -y
rm -rf "$SCRIPT_DIR"/installmoonlight.sh
sudo reboot
