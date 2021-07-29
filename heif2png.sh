#!/bin/sh
filename="$1"
heif-convert "$1" "${filename%.*}.png"
