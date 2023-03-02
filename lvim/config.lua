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
lvim.keys.normal_mode["h"] = ":HopAnywhere<cr>"
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
       "karb94/neoscroll.nvim",
       config = function()
       require('neoscroll').setup({
        -- All these keys will be mapped to their corresponding default scrolling animation
        mappings = {'<C-u>', '<C-d>', '<C-b>', '<C-f>',
                    '<C-y>', '<C-e>', 'zt', 'zz', 'zb'},
        hide_cursor = true,          -- Hide cursor while scrolling
        stop_eof = true,             -- Stop at <EOF> when scrolling downwards
        respect_scrolloff = false,   -- Stop scrolling when the cursor reaches the scrolloff margin of the file
        cursor_scrolls_alone = true, -- The cursor will keep on scrolling even if the window cannot scroll further
        easing_function = nil,       -- Default easing function
        pre_hook = nil,              -- Function to run before the scrolling animation starts
        post_hook = nil,             -- Function to run after the scrolling animation ends
        performance_mode = false,    -- Disable "Performance Mode" on all buffers.
      })
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
       config = function()
        require("hop").setup { keys = 'etovxqpdygfblzhckisuran' }
       end
     },
}

require('telescope').load_extension('projects')
