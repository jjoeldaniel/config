# LunarVim Config

This is just [LunarVim](https://www.lunarvim.org/) + some extras so I dont lose my sanity.

## Added Plugins

- [neoscroll.nvim](https://github.com/karb94/neoscroll.nvim)
- [symbols-outline.nvim](https://github.com/simrat39/symbols-outline.nvim)
- [hop.nvim](https://github.com/phaazon/hop.nvim)
- [nvim-ts-rainbow](https://github.com/mrjones2014/nvim-ts-rainbow)
- [numb.nvim](https://github.com/nacro90/numb.nvim)
- [mini.map](https://github.com/echasnovski/mini.map/)

## Custom Keymaps

| Keymap       | Description                           | Command                                | Mode   |
| ------------ | ------------------------------------- | -------------------------------------- | ------ |
| `h`          | Hop to a word using 1 character       | `:HopChar1`                            | Normal |
| `hh`         | Hop to a word using 2 characters      | `:HopChar2`                            | Normal |
| `hhh`        | Hop to a word                         | `:HopWord`                             | Normal |
| `<S-T>`      | Open file tree                        | `:NvimTreeToggle`                      | Normal |
| `<S-H>`      | Hop anywhere                          | `:HopAnywhere`                         | Normal |
| `<S-F>`      | Fuzzy Search                          | `:Telescope current_buffer_fuzzy_find` | Normal |
| `<S-O>`      | Open symbols outline                  | `:SymbolsOutline`                      | Normal |
| `<C-s>`      | Save File                             | `:w`                                   | Normal |
| `<C-x>`      | Save File and Exit                    | `:x`                                   | Normal |
| `w`          | Scroll up                             | `neoscroll.scroll(-10, true, 250)`     | Normal |
| `s`          | Scroll down                           | `neoscroll.scroll(10, true, 250)`      | Normal |
| `<S-M><S-M>` | Toggle mini.map                       | `MiniMap.toggle()`                     | Normal |
| `<S-M>`      | Focus mini.map                        | `MiniMap.toggle_focus()`               | Normal |

---

Created with 💖 by [*jjoeldaniel*](https://github.com/jjoeldaniel)
