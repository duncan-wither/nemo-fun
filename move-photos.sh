#!/bin/bash

#FILE=$(dialog --stdout --title "Please choose a file" --fselect $PWD 14 48)
FILE=$(zenity --file-selection --directory)
#echo "${FILE} file chosen."

SAVEIFS=$IFS
IFS=$(echo -en "\n\b")
# $1 is the photo list
#echo "$PWD/$1"

for p in $(cat "$1")
do
    #echo "moving $p to $FILE"
    mv $p $FILE
done

## Create nemo scripts for moving files
IFS=$SAVEIFS
