#!/usr/bin/env bash

cd "$(dirname "$0")"

for file in $(git diff --cached --name-only | grep ".[jpg|jpeg|png]\$"); do
	echo "Crop $file"
	convert ${file} -alpha set -virtual-pixel transparent \
		-channel A -blur 0x8 -level 50%,100% +channel ${file}.new
	# rm -f $file
	# mv -f ${file}.new $file
done
