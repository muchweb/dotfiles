#!/bin/bash
timestamp="$(date +%Y-%m-%d-%H-%M-%S)"
targetbase="$HOME/screenshots"
mkdir -p $targetbase
[ -d $targetbase ] || exit 1
/usr/bin/gm import -window root "${targetbase}/${timestamp}.png"
