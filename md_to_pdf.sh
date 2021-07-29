#!/bin/sh
NAME=$(echo "$1" | cut -d'.' -f1)
pandoc -s -o "$NAME.pdf" "$1"
