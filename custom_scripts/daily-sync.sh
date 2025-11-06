#!/bin/bash
# Lacave PC's MAC address
WOL_MAC="74:56:3c:6a:fb:9e"

# Send magic packet to wake up PC
wakeonlan $WOL_MAC

# Wait a few seconds for the PC to wake up
sleep 40

# Ensure SSH agent is running if using a passphrase
if ! ssh-add -l | grep "id_rsa_mbp-2015" &>/dev/null; then
    ssh-add ~/.ssh/id_rsa_mbp-2015
fi

# Run rsync command
rsync -avz --backup --backup-dir=~/rsync_trash --delete --exclude="~/Documents/old-tokeepincaseof" ~/Documents ~/Music ~/Pictures lacave:~

# Shutdown PC
ssh lacave "sudo shutdown -h now"

# Stop the SSH agent after the sync
ssh-agent -k

