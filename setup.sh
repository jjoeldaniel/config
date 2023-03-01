#
# https://github.com/jjoeldaniel
#

echo  "
 =========================
| Joel's WSL Setup Script |
|                         |
| Installs various tools  |
 =========================
"

# Update
#
# Check for system updates
sudo apt update && sudo apt upgrade

# ZSH
#
# Better than bash lol
sudo apt install zsh -y
sudo chsh -s $(which zsh)

# OhMyZSH
#
# ZSH Plugin Manager
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# PowerLevel10k Theme
# 
# Lightweight ZSH theme
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
sed -i 's/ZSH_THEME=.*/ZSH_THEME="powerlevel10k\/powerlevel10k"/' ~/.zshrc

# ZSH Syntax Hightlighting
#
# Adds syntax highlighting to the ZSH shell
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
echo "source ${(q-)PWD}/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc

# ZSH Auto-suggestions
#
# Adds auto-suggestions to your terminal
#
# Add the plugin to the list of plugins for Oh My Zsh to load (inside ~/.zshrc)
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Brew
#
# Very useful package manager
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Node
#
# JavaScript runtime environment
brew install node

# xclip
#
# Clipboard manager
sudo apt install xclip -y

# Navi
#
# Cheatsheet tool for the command-line
brew install navi

# Languages
# Java OpenJDK
brew install openjdk
# C++ and C dev tools
sudo apt install build-essential -y
# Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# fzf
#
# Command-line fuzzy finder
brew install fzf
# To install useful key bindings and fuzzy completion:
$(brew --prefix)/opt/fzf/install

# Autojump
#
# Faster way to navigate your filesystem
brew install autojump
brew install thefuck

# Remove Windows from PATH
#
# Default is slow as shit
echo -e "\n[interop]\nappendWindowsPath = false" | sudo tee -a /etc/wsl.conf > /dev/null

