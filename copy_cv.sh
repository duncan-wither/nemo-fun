#!/bin/bash
IFS='
'
set -o noglob
(cd /home/slam/Desktop/ &&  rm "Duncan Wither CV.pdf")
#echo $1 >> /home/slam/Desktop/log.txt
#echo $3 >> /home/slam/Desktop/log.txt
cp "$1" "/home/slam/Desktop/Duncan Wither CV.pdf"
