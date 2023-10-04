#!/bin/bash

# Define the directory path and file name
config_dir="/root/.config/Moonlight Game Streaming Project"
config_file="$config_dir/Moonlight.conf"

# Check if the directory exists, and create it if not
if [ ! -d "$config_dir" ]; then
  mkdir -p "$config_dir"
fi

# Check if the file exists, and create it with default content if not
if [ ! -e "$config_file" ]; then
  echo "[General]" > "$config_file"
  echo "height=240" >> "$config_file"
  echo "width=320" >> "$config_file"
fi

# Define the new values
new_height="height=240"
new_width="width=320"

# Use sed to replace the values in the file
sed -i "s/height=480/$new_height/" "$config_file"
sed -i "s/width=720/$new_width/" "$config_file"

echo "Configuration file updated successfully."


# Timings to add
timings=(
    "320 1 20 32 45 240 1 2 3 16 0 0 0 60.000000 0 6514560 1"
    "720 1 29 69 117 480 1 3 6 34 0 0 0 30 1 14670150 1"
    "720 1 29 69 117 576 1 7 6 38 0 0 0 25 1 14656125 1"
)

file="/opt/rgbpi/ui/data/timings.dat"

# Remove everything except the first two lines from the file
sed -i '3,$d' "$file"

# Append the new data to the file
for line in "${timings[@]}"; do
    echo "$line" >> "$file"
done

# Execute moonlight
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
QT_SCALE_FACTOR=0.52 H264_DECODER_HINT=h264_v4l2m2m DRM_FORCE_DIRECT=1 PULSE_SERVER=none QT_QPA_EGLFS_HIDECURSOR=1 moonlight-qt