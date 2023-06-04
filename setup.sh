#!/bin/bash

# rust
if ! command -v cargo &> /dev/null
then
    curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
fi

# fish setup
if ! command -v fish &> /dev/null
then
	sudo apt-add-repository ppa:fish-shell/release-3
	sudo apt update
	sudo apt install fish

	curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher

	chsh -s $(which fish)
fi

# terminal utilities
cargo install starship
cargo install tealdeer
cargo install autojump
cargo install bat
cargo install gitui
cargo install bacon
cargo install exa
cargo install ripgrep
