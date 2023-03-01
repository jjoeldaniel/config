--[[
lvim is the global options object

Linters should be
filled in as strings with either
a global executable or a path to
an executable
]]
-- THESE ARE EXAMPLE CONFIGS FEEL FREE TO CHANGE TO WHATEVER YOU WANT

-- general
lvim.log.level = "warn"
lvim.format_on_save.enabled = false
lvim.colorscheme = "lunar"

-- more general settings
vim.opt.clipboard = "unnamedplus" -- allows neovim to access the system clipboard
vim.opt.ignorecase = true

-- keymappings [view all the defaults by pressing <leader>Lk]
lvim.leader = "space"
-- add your own keymapping
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
lvim.keys.normal_mode["t"] = ":NvimTreeToggle<cr>"
lvim.keys.normal_mode["f"] = ":Telescope current_buffer_fuzzy_find<cr>"
lvim.keys.normal_mode["<S-T>"] = ":ToggleTerm<cr>"
lvim.keys.normal_mode["<S-O>"] = ":SymbolsOutline<cr>"

-- After changing plugin config exit and reopen LunarVim, Run :PackerInstall :PackerCompile
lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.setup.renderer.icons.show.git = false

-- if you don't want all the parsers change this to a table of the ones you want
lvim.builtin.treesitter.ensure_installed = {
  "bash",
  "c",
  "javascript",
  "json",
  "lua",
  "python",
  "typescript",
  "tsx",
  "css",
  "rust",
  "java",
  "yaml",
}

lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enable = true

-- Additional Plugins
lvim.plugins = {
     {
       "folke/trouble.nvim",
       cmd = "TroubleToggle",
     },
     {
       "akinsho/toggleterm.nvim",
       cmd = "toggleterm",
     },
     {
       "ahmedkhalf/project.nvim",
       config = function()
        require("project_nvim").setup{}
       end
     },
     {
       "simrat39/symbols-outline.nvim",
       config = function()
        require("symbols-outline").setup()
       end
     }
}

require('telescope').load_extension('projects')

