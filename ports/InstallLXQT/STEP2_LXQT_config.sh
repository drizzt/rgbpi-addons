#!/bin/bash
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

mkdir -p /root/.config/lxqt
mkdir -p /usr/share/lxqt
mkdir -p /root/.config/autostart
mkdir -p /root/.config/pcmanfm-qt/lxqt
cp -r -f "$SCRIPT_DIR"/lxqt /root/.config/
cp -r -f "$SCRIPT_DIR"/share/lxqt /usr/share/
cp -fr "$SCRIPT_DIR"/adjustscreen.desktop /root/.config/autostart
cp -fr "$SCRIPT_DIR"/settings.conf /root/.config/pcmanfm-qt/lxqt
