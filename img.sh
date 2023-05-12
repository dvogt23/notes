#!/usr/bin/env bash

cd "$(dirname "$0")"

convert $1 -alpha set -virtual-pixel transparent \
	-channel A -blur 0x8 -level 50%,100% +channel $1
