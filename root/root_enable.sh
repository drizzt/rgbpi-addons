#!/bin/bash

set -euo pipefail

echo "pi ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/010_pi-nopasswd

clear
echo
echo
echo "  ROOT ENABLED SUCCESSFULLY!"

sleep 3

