
local keymap = vim.api.nvim_set_keymap
local opts = {noremap=true, silent=true}

-- Leader Key
vim.g.mapleader = ' '

-- Normal Keybinds
keymap('n', '<C-h>', '<C-w>h', opts)
keymap('n', '<C-j>', '<C-w>j', opts)
keymap('n', '<C-k>', '<C-w>k', opts)
keymap('n', '<C-l>', '<C-w>l', opts)

-- Nvim Tree Binds
keymap('n', '<C-m>', ':NvimTreeToggle<CR>', opts)

-- Toggle Term
keymap('n', '<C-t>', ':ToggleTerm<CR>', opts)

-- Telescope
local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>Y', '+yy')

vim.api.nvim_set_keymap("n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", { noremap = true })
