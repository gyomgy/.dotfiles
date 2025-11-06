#!/bin/bash

# Ensure SSH agent is running if using a passphrase
if ! ssh-add -l | grep "id_rsa_mbp-2015" &>/dev/null; then
    ssh-add ~/.ssh/id_rsa_mbp-2015
fi

# Run rsync command
rsync -avz --backup --backup-dir=~/rsync_trash --delete --exclude="~/Documents/old-tokeepincaseof" ~/Documents ~/Music ~/Pictures lacave:~

# Stop the SSH agent after the sync
ssh-agent -k

