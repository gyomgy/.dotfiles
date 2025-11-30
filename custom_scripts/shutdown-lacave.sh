#!/bin/bash

# Prompt before shutdown, 10-second timeout
echo "lacave will shut down in 10 seconds. Press 'n' to cancel."
read -t 10 -p "> " user_input

if [[ "$user_input" == "n" || "$user_input" == "N" ]]; then
    echo "Shutdown canceled."
else
    echo "Shutting down..."
    ssh -i ~/.ssh/id_ed25519_shutdown-lacave lacave "sudo /usr/sbin/shutdown -h now"
fi
