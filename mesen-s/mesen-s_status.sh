#!/bin/bash

set -euo pipefail

clear
echo
echo
if [[ -f /opt/retroarch/cores/snes9x_libretro.info.bak ]]; then
	echo "  MESEN-S IS INSTALLED!"
else
	echo "  MESEN-S IS NOT INSTALLED!"
fi

sleep 3
