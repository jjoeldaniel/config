# 💤 LazyVim

Joel's [LazyVim](https://github.com/LazyVim/LazyVim) config.

Refer to the [documentation](https://lazyvim.github.io/installation) for more details.

## Installation

### Make a backup of your current Neovim files:

```terminal
# required
mv ~/.config/nvim ~/.config/nvim.bak

# optional but recommended
mv ~/.local/share/nvim ~/.local/share/nvim.bak
mv ~/.local/state/nvim ~/.local/state/nvim.bak
mv ~/.cache/nvim ~/.cache/nvim.bak
```

### Download and move config
```terminal
mkdir -p ~/.config/nvim && curl -sSL "https://github.com/jjoeldaniel/config/archive/main.tar.gz" | tar -xz --strip-components=2 -C ~/.config/nvim config-main/nvim/
```

## Dependencies

- [code-minimap](https://github.com/wfxr/code-minimap)
  - Install with `cargo install code-minimap`


## Missing Neovim?

I recommend installing with [brew](https://brew.sh/)

```terminal
brew install neovim
```
