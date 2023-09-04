#!/bin/bash

set -euo pipefail

cd "$(dirname "$(readlink -f "$0")")"

if [[ -f /opt/retroarch/cores/snes9x_libretro.info.bak ]] && [[ -f /opt/retroarch/cores/snes9x_libretro.so.bak ]]; then
	mv -v /opt/retroarch/cores/snes9x_libretro.info.bak /opt/retroarch/cores/snes9x_libretro.info
	mv -v /opt/retroarch/cores/snes9x_libretro.so.bak /opt/retroarch/cores/snes9x_libretro.so

	clear
	echo
	echo
	echo "  MESEN-S UNINSTALLED SUCCESSFULLY!"
else
	clear
	echo
	echo
	echo "  MESEN-S WAS NOT INSTALLED!"
fi

sleep 3
