#!/usr/bin/env bash

git pull origin master

NOTES_DIR="/mnt/usb/ncdata/dvogt/files/Notes"
cd /mnt/usb/notes
rsync -rtvu --delete --exclude='private' --exclude='diary' --exclude='html' --exclude='work' $NOTES_DIR . --out-format='%f'

git add Notes/*
git commit -m "Update" # TODO: commit message what updated
git push
