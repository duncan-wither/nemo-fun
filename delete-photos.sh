#!/bin/bash

# Script to delete the files

if (( $EUID == 0 ))
  then echo "Don't run as root (as it fills up roots trash)."
  exit
fi

SAVEIFS=$IFS
IFS=$(echo -en "\n\b")
# $1 is the photo list
#echo "$PWD/$1"

if $(zenity --question --text="Are you sure you want to delete these files?" --default-cancel)
  then 
    for p in $(cat "$1")
    do
        #echo "deleting $p"
        gio trash $p
    done
  #else 
  #  echo False Button
fi
  
## Create nemo scripts for moving, and deleting files
IFS=$SAVEIFS
