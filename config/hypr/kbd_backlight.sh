#!/bin/bash
# Toggle keyboard backlight
device="tpacpi::kbd_backlight"
current=$(brightnessctl -d "$device" g)
next=$(( (current + 1) % 3))
brightnessctl -d "$device" s $next
