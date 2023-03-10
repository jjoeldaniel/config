#!/bin/bash

git pull --quiet

script_dir=$(dirname "$0")
repo_file="$script_dir/config.lua"
config_file="$HOME/.config/lvim/config.lua"

if diff "$repo_file" "$config_file" >/dev/null ; then
  echo "No difference found"
else
  echo "Updating config file"
  cp $repo_file $config_file
  echo "Configuration file updated"
fi
