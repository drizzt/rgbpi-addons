#!/bin/bash

set -euo pipefail

cd "$(dirname "$(readlink -f "$0")")"
mv -vn /opt/retroarch/cores/snes9x_libretro.info /opt/retroarch/cores/snes9x_libretro.info.bak
mv -vn /opt/retroarch/cores/snes9x_libretro.so /opt/retroarch/cores/snes9x_libretro.so.bak

cp -v opt/retroarch/cores/mesen-s_libretro.info /opt/retroarch/cores/snes9x_libretro.info
cp -v opt/retroarch/cores/mesen-s_libretro.so /opt/retroarch/cores/snes9x_libretro.so

clear
echo
echo
echo "  MESEN-S (RE)INSTALLED SUCCESSFULLY!"

sleep 3
