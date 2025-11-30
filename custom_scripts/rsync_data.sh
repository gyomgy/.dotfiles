#!/bin/bash

# Run rsync command
rsync -avz --backup --backup-dir=~/rsync_trash --delete \
        --exclude="Documents/old-tokeepincaseof" \
        ~/Documents ~/Music ~/Pictures ~/.dotfiles lacave-backup:~/


