--[[
lvim is the global options object

Linters should be
filled in as strings with either
a global executable or a path to
an executable
]]
-- THESE ARE EXAMPLE CONFIGS FEEL FREE TO CHANGE TO WHATEVER YOU WANT

-- general settings
lvim.log.level = "warn"
lvim.format_on_save.enabled = false
lvim.colorscheme = "lunar"
vim.opt.clipboard = "unnamedplus" -- allows neovim to access the system clipboard
vim.opt.ignorecase = true
lvim.builtin.treesitter.rainbow.enable = true

-- keymappings [view all the defaults by pressing <leader>Lk]
lvim.leader = "space"

--  save/exit
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
lvim.keys.normal_mode["<C-x>"] = ":x<cr>"

-- ui
lvim.keys.normal_mode["<S-T>"] = ":NvimTreeToggle<cr>"
lvim.keys.normal_mode["<S-O>"] = ":SymbolsOutline<cr>"
lvim.keys.normal_mode["<S-F>"] = ":Telescope current_buffer_fuzzy_find<cr>"
lvim.keys.normal_mode["<S-P>"] = ":Telescope projects<cr>"

-- hop
lvim.keys.normal_mode["h"] = ":HopChar1<cr>"
lvim.keys.normal_mode["hh"] = ":HopChar2<cr>"
lvim.keys.normal_mode["hhh"] = ":HopWord<cr>"
lvim.keys.normal_mode["<S-H>"] = ":HopAnywhere<cr>"

-- neoscroll
lvim.keys.normal_mode["s"] = "<cmd>lua require('neoscroll').scroll(10, true, 250)<cr>"
lvim.keys.normal_mode["w"] = "<cmd>lua require('neoscroll').scroll(-10, true, 250)<cr>"

-- extra settings
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
    'karb94/neoscroll.nvim',
    config = function()
      require('neoscroll').setup()
    end
  },
  {
    "simrat39/symbols-outline.nvim",
    config = function()
      require("symbols-outline").setup()
    end
  },
  {
    "phaazon/hop.nvim",
    event = "BufRead",
    config = function()
      require("hop").setup()
    end,
  },
  {"mrjones2014/nvim-ts-rainbow"},
}

