#!/usr/bin/env bash
# ~/.local/bin/screensaver.sh

# Check if a screensaver (kitty with SCREENSAVER title) is already running
if pgrep -f "kitty.*SCREENSAVER" >/dev/null; then
    # Already running → do nothing
    exit 0
fi

# Not running → launch screensaver
kitty --title "SCREENSAVER" --start-as=fullscreen pipes-rs -r 0.8
