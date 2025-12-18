#!/bin/bash

# Load the ISO
cdemu load 0 "$HOME/Games/Le_Maitre_de_l_Olympe/CD poseidon.iso"
sleep 2  # Wait for device to appear

# Mount it
sudo mount /dev/sr0 /mnt/zeus

# Launch the game
env LUTRIS_SKIP_INIT=1 lutris lutris:rungameid/1

# Wait for game to close
wait $!

# Cleanup
sudo umount /mnt/zeus
cdemu unload 0
