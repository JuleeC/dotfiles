#!/bin/bash

# Screenshot directory
shot_dir="$HOME/Pictures/Screenshots"
mkdir -p "$shot_dir"

# Timestamp for filename
timestamp=$(date +"%Y-%m-%d_%H-%M-%S")
filename="$shot_dir/screenshot_$timestamp.png"

# Select region and take screenshot
grim -g "$(slurp)" "$filename"

# Optional: copy to clipboard
wl-copy < "$filename"

