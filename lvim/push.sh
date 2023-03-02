#!/bin/bash

git pull --quiet

if diff "./config.lua" "/home/$USER/.config/lvim/config.lua" >/dev/null ; then
  echo "No difference found"
else
  echo "Updating config file"
  cp "./config.lua" "/home/$USER/.config/lvim"
  echo "Configuration file updated"
fi
