#!/bin/bash
# Replace with your PC's MAC address (e.g., 00:11:22:33:44:55)
WOL_MAC="74:56:3c:6a:fb:9e"

# Send magic packet to wake up PC
wakeonlan $WOL_MAC

# Wait a few seconds for the PC to wake up
sleep 10
