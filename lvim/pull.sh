if diff "./config.lua" "/home/$USER/.config/lvim" >/dev/null ; then
  echo "No difference found"
else
  echo "Updating repo config file"
  cp "/home/$USER/.config/lvim/config.lua" "./config.lua"
  echo "Configuration file updated"
fi
