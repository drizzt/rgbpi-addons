#!/bin/bash

set -euo pipefail

clear
echo
echo
if [[ -f /etc/sudoers.d/010_pi-nopasswd ]]; then
	echo "  ROOT ACCESS IS ENABLED!"
else
	echo "  ROOT ACCESS IS NOT ENABLED!"
fi

sleep 3
