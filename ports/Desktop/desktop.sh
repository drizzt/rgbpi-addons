#!/bin/bash
timings=(
    "320 1 20 32 45 240 1 2 3 16 0 0 0 60.000000 0 6514560 1"
    "720 1 46 69 100 480 1 3 6 34 0 0 0 30 1 14670150 1"
    "720 1 29 69 117 576 1 7 6 38 0 0 0 25 1 14656125 1"
	"640 1 26 61 104 480 1 3 6 34 0 0 0 30 1 13038390 1"
)

file="/opt/rgbpi/ui/data/timings.dat"

# Remove all data from the file
> "$file"

# Add the new data to the file
for line in "${timings[@]}"; do
    echo "$line" >> "$file"
done

# Execute moonlight
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
startx
export DISPLAY=:0
xrandr --output VGA-1 --mode 720x480i
