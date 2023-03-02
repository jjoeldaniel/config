# LunarVim Config

This is just [LunarVim](https://www.lunarvim.org/) + some extras so I dont lose my sanity.

## Added Plugins

- [neoscroll.nvim](https://github.com/karb94/neoscroll.nvim)
- [symbols-outline.nvim](https://github.com/simrat39/symbols-outline.nvim)
- [hop.nvim](https://github.com/phaazon/hop.nvim)
- [nvim-ts-rainbow](https://github.com/mrjones2014/nvim-ts-rainbow)

## Custom Keymaps
lvim.keys.normal_mode["h"] = ":HopChar1<cr>"
lvim.keys.normal_mode["<S-H>"] = ":HopChar2<cr>"

| Keymap  | Description                           | Command                                | Mode   |
| ------- | ------------------------------------- | -------------------------------------- | ------ |
| `t`     | Open file tree                        | `:NvimTreeToggle`                      | Normal |
| `h`     | Hop to a word using 1 character       | `:HopChar1`                            | Normal |
| `hh`    | Hop to a word using 2 characters      | `:HopChar2`                            | Normal |
| `<S-H>  | Hop anywhere                          | `:HopAnywhere`                         | Normal |
| `f`     | Fuzzy Search                          | `:Telescope current_buffer_fuzzy_find` | Normal |
| `<S-T>` | Open a terminal in the current buffer | `:ToggleTerm`                          | Normal |
| `<S-O>` | Open symbols outline                  | `:SymbolsOutline`                      | Normal |
| `<C-s>` | Save File                             | `:w`                                   | Normal |

---

Created with 💖 by [*jjoeldaniel*](https://github.com/jjoeldaniel)
