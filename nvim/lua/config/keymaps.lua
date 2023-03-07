-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua

-- ui
vim.api.nvim_set_keymap("n", "<S-T>", ":NvimTreeToggle<cr>", {})
vim.api.nvim_set_keymap("n", "<S-O>", ":SymbolsOutline<cr>", {})
vim.api.nvim_set_keymap("n", "<S-F>", ":Telescope current_buffer_fuzzy_find<cr>", {})
vim.api.nvim_set_keymap("n", "<S-P>", ":Telescope project<cr>", {})

-- hop
vim.api.nvim_set_keymap("n", "h", ":HopChar1<cr>", {})
vim.api.nvim_set_keymap("n", "hh", ":HopChar1<cr>", {})
vim.api.nvim_set_keymap("n", "<S-H>", ":HopWord<cr>", {})

-- terminal
vim.api.nvim_set_keymap("n", "<C-Bslash>", ":ToggleTerm<cr>", {})
vim.api.nvim_set_keymap("t", "<C-Bslash>", "<esc><esc>:ToggleTerm<cr>", {})

--- minimap
vim.api.nvim_set_keymap("n", "<S-M>", ":MinimapToggle<cr>", {})

-- neoscroll
vim.api.nvim_set_keymap("n", "w", "<cmd>lua require('neoscroll').scroll(-10, true, 250)<cr>", {})
vim.api.nvim_set_keymap("n", "s", "<cmd>lua require('neoscroll').scroll(10, true, 250)<cr>", {})
