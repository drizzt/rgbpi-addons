#!/bin/bash

#!/bin/bash

# Change moonlight.conf to the correct native resolution
# Define the file path
config_file="/root/.config/Moonlight Game Streaming Project/Moonlight.conf"

# Check if the file exists
if [ ! -e "$config_file" ]; then
  echo "Configuration file not found: $config_file"
  exit 1
fi

# Define the new values
new_height="height=480"
new_width="width=720"

# Use sed to replace the values in the file
sed -i "s/height=240/$new_height/" "$config_file"
sed -i "s/width=320/$new_width/" "$config_file"

echo "Resolution Configuration file updated successfully."

# Timings to add, the below 720x480 shifts the image slighly to the left.
timings=(
    "320 1 20 32 45 240 1 2 3 16 0 0 0 60.000000 0 6514560 1"
    "720 1 38 69 108 480 1 3 6 34 0 0 0 30 1 14670150 1"
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
H264_DECODER_HINT=h264_v4l2m2m DRM_FORCE_DIRECT=1 PULSE_SERVER=none QT_QPA_EGLFS_HIDECURSOR=1 QT_QPA_EGLFS_KMS_CONFIG="$SCRIPT_DIR"/moonlight480.json moonlight-qt