#!/bin/bash
# wake up lacave server
wake_pc.sh

# (need to deal with grub too long timeout on la cave) Wait a few seconds for the PC to wake up
sleep 35

# Run rsync command
rsync_data.sh

# Shutdown PC
shutdown-lacave.sh

