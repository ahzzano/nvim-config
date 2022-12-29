-- Basic Stuff
vim.wo.number = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.g.loaded_netrw = 1
vim.g.loaded_netrwplugin = 1

vim.opt.termguicolors = true

vim.opt.modifiable = true
vim.opt.background = 'dark'

vim.g.airline_theme = 'minimalist'
vim.cmd.colorscheme "catppuccin-frappe" 

vim.opt.updatetime = 300

vim.opt.clipboard:append { 'unnamed', 'unnamedplus' }

-- Plugins
require('plugins')

-- Keyboard Shortcuts
require("keymappings")
require("options")

-- Plugin Setups

require("bufferline").setup({
    options = {
        offsets = {{filetype="NvimTree", text="Files", text_align="center"}}
    },
    highlights = {
        buffer_selected = { italic = false },
        diagnostic_selected = { italic = false },
        hint_selected = { italic = false },
        pick_selected = { italic = false },
        pick_visible = { italic = false },
        pick = { italic = false },
    }
})

require("nvim-autopairs").setup()
require('Comment').setup()
require('cmp').setup()


