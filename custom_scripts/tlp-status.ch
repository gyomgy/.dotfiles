#!/usr/bin/env bash

# Get current TLP mode (AC or Battery)
mode=$(tlp-stat -s | awk -F': ' '/Mode/ {print $2}'

# Optional: get battery charge percent
battery=$(tlp-stat -b | awk -F': ' '/Charge/ {print $2}' | head -n1)

# Print in one line for Waybar
echo "⚡ $mode | CPU: $cpu_freq | Batt: $battery"
