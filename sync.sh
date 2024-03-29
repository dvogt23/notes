#!/usr/bin/env bash

cd "$(dirname "$0")"

git pull origin main
rsync -rtvu --delete --exclude-from='.ignore_sync' $NOTES_DIR . --out-format='%f'

git add Notes/*
git commit -m "$(git --no-pager diff --name-only --cached --diff-filter=AM)"
git push
