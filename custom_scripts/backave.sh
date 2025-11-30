#!/bin/bash

# Check if PC is on
if ping -c1 192.168.0.2 &>/dev/null; then
    echo "lacave is already running, running only rsync..."
    rsync_data.sh
else
    echo "lacave is off, booting to backup then shutting down"
    daily-sync.sh
fi
