# LunarVim Config

This is just [LunarVim](https://www.lunarvim.org/) + some extras so I dont lose my sanity.

## Added Plugins

- [trouble.nvim](https://github.com/folke/trouble.nvim)
- [toggleterm.nvim](https://github.com/akinsho/toggleterm.nvim)
- [project.nvim](https://github.com/ahmedkhalf/project.nvim)
- [neoscroll.nvim](https://github.com/karb94/neoscroll.nvim)
- [symbols-outline.nvim](https://github.com/simrat39/symbols-outline.nvim)
- [hop.nvim](https://github.com/phaazon/hop.nvim)

## Custom Keymaps

| Keymap  | Description                           | Command                                | Mode   |
| ------- | ------------------------------------- | -------------------------------------- | ------ |
| `<C-s>` | Save File                             | `:w`                                   | Normal |
| `t`     | Open file tree                        | `:NvimTreeToggle`                      | Normal |
| `h`     | Hop to a word                         | `:HopAnywhere`                         | Normal |
| `f`     | Fuzzy Search                          | `:Telescope current_buffer_fuzzy_find` | Normal |
| `<S-T>` | Open a terminal in the current buffer | `:ToggleTerm`                          | Normal |
| `<S-O>` | Open symbols outline                  | `:SymbolsOutline`                      | Normal |

---

Created with 💖 by [*jjoeldaniel*](https://github.com/jjoeldaniel)
