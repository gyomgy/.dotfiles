#!/bin/bash
for mime in $(grep -h '^MimeType=' /usr/share/applications/*.desktop | tr ';' '\n' | sort -u); do
    default=$(xdg-mime query default "$mime")
    printf "%-50s -> %s\n" "$mime" "$default"
done
