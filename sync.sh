#!/usr/bin/env bash

NOTES_DIR="/mnt/usb/ncdata/dvogt/files/Notes"
cd /home/pi/notes
rsync -rtvu --delete --exclude='private' $NOTES_DIR . --out-format='%f'

git pull
git add Notes/*
git commit -m "Update" # TODO: commit message what updated
git push
