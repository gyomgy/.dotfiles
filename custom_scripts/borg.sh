#!/bin/bash

borg create --progress \
       /mnt/coldhome/borgyom::'{hostname}-{now}' \
       . \
        --exclude Games \
        --exclude Music \
        --exclude Videos \
        --exclude rsync_trash \
        --exclude Downloads \
