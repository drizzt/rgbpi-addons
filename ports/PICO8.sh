#!/bin/bash
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
"$SCRIPT_DIR"/pico-8/pico8_64 -splore -home "$SCRIPT_DIR"/pico-8
