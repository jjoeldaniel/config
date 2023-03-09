#!/bin/bash

# delete old backup
rm -rf ~/.config/nvim.bak

# backup current nvim directory
mv ~/.config/nvim ~/.config/nvim.bak

# backup misc
mv ~/.local/share/nvim ~/.local/share/nvim.bak
mv ~/.local/state/nvim ~/.local/state/nvim.bak
mv ~/.cache/nvim ~/.cache/nvim.bak

# download and move config into ~/.config/nvim
mkdir -p ~/.config/nvim && curl -sSL "https://github.com/jjoeldaniel/config/archive/main.tar.gz" | tar -xz --strip-components=2 -C ~/.config/nvim config-main/nvim/

# install cargo dependency
cargo install code-minimap

# pretty message :)
echo  "
 =========================
| Joel's Neovim           |
| Setup Script            |
 =========================
"
