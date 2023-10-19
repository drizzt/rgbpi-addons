#!/bin/bash

# Define the native height and width values, this value needs to match the timings resolution below
new_height=480
new_width=720

# Set the path to the Moonlight.conf file
moonlight_conf="/root/.config/Moonlight Game Streaming Project/Moonlight.conf"

# Check if the file exists or not
if [ -f "$moonlight_conf" ]; then
    # The Moonlight.conf file exists, so update the height and width values
    sed -i "s/^height=.*/height=${new_height}/" "$moonlight_conf"
    sed -i "s/^width=.*/width=${new_width}/" "$moonlight_conf"
    
    echo "Height and width values in Moonlight.conf have been updated."
else
    # The Moonlight.conf file does not exist, so create it with the specified values
    echo "[General]" > "$moonlight_conf"
    echo "height=${new_height}" >> "$moonlight_conf"
    echo "width=${new_width}" >> "$moonlight_conf"
    
    echo "Moonlight.conf file created with height and width values."
fi

echo "Configuration file updated successfully."

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
QT_SCALE_FACTOR=0.92 H264_DECODER_HINT=h264_v4l2m2m DRM_FORCE_DIRECT=1 PULSE_SERVER=none QT_QPA_EGLFS_HIDECURSOR=1 QT_QPA_EGLFS_KMS_CONFIG="$SCRIPT_DIR"/moonlight480.json moonlight-qt
