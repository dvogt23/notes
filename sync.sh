#!/usr/bin/env bash

cd "$(dirname "$0")"

git pull origin main
rsync -rtvu --delete --exclude='private' --exclude='diary' --exclude='html' --exclude='.obsidian' --exclude='work' $NOTES_DIR . --out-format='%f'

git add Notes/*
git commit -m "$(git --no-pager diff --name-only --cached --diff-filter=AM)"
git push
