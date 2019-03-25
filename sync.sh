#!/usr/bin/env bash

rsync -rtvu --delete --exclude='private' $NOTES_DIR .
