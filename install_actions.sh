#!/bin/sh
if [ ! -d "/usr/share/nemo/actions" ]; then
  echo "Please ensure nemo is installed."
  exit 1
fi

sudo cp ./files/* /usr/share/nemo/actions/
