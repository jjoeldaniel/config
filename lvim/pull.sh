#!/bin/bash

repo_file="./config.lua"
config_file="$HOME/.config/lvim/config.lua"

if diff "$repo_file" "$config_file" >/dev/null ; then
  echo "No difference found"
else
  echo "Updating repo config file"
  cp $config_file $repo_file
  echo "Configuration file updated"
fi
