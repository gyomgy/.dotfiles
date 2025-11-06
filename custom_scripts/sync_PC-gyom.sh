#!/bin/bash

# Define source and destination
SOURCE="$HOME/"
DESTINATION="lacave:$HOME/"

# Rsync options
rsync -avh --progress \
    --exclude "Downloads/" \
    --exclude ".wget-hsts" \
    --exclude ".android" \
    --exclude ".face" \
    --exclude ".pki" \
    --exclude ".Xauthority" \
    --exclude "apfs-fuse/" \
    --exclude ".Genymobile" \
    --exclude ".profile" \
    --exclude ".xsession-errors" \
    --exclude "Applications/" \
    --exclude ".gnome" \
    --exclude "Public/" \
    --exclude ".xsession-errors.old" \
    --exclude ".bash_history" \
    --exclude ".icons" \
    --exclude ".shell.pre-oh-my-zsh" \
    --exclude ".zcompdump" \
    --exclude ".bash_logout" \
    --exclude "installed_packages.txt" \
    --exclude "snap/" \
    --exclude ".zcompdump-gyom-B550M-AORUS-ELITE-5.9" \
    --exclude ".bashrc" \
    --exclude ".lesshst" \
    --exclude ".ssh/" \
    --exclude ".zcompdump-gyom-B550M-AORUS-ELITE-5.9.zwc" \
    --exclude ".cache/" \
    --exclude ".local/" \
    --exclude ".sudo_as_admin_successful" \
    --exclude ".config/" \
    --exclude "Templates/" \
    --exclude ".zsh_history" \
    --exclude "Desktop/" \
    --exclude ".nv" \
    --exclude ".zshrc" \
    --exclude ".nvidia-settings-rc" \
    --exclude ".themes" \
    --exclude ".dmrc" \
    --exclude ".oh-my-zsh" \
    --exclude "Videos/" \
    "$SOURCE" "$DESTINATION"

# Exit with rsync's return code
exit $?

