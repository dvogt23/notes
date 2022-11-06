#!/usr/bin/env bash

git pull origin master

rsync -rtvu --delete --exclude='private' --exclude='diary' --exclude='html' --exclude='work' $NOTES_DIR . --out-format='%f'

git add Notes/*
git commit -m "$(git --no-pager diff --name-only --diff-filter=AM)"
git push
