local map = require('settings.utils').map
vim.g.mapleader = " "
map('n', '<C-n>', ':bnext<CR>', opts)
map('n', '<C-p>', ':bprevious<CR>', opts)
map('n', '<C-l>', ':LazyGit<CR>', opts)
map('n', '<C-i>', ':w<CR>', opts)
map('n', '<C-h>', ':bd<CR>', opts)
map('n', '<F7>', ':so ~/.config/nvim/init.lua<CR>', opts)
map('n', '<leader>ff', '<cmd>Telescope find_files hidden=true<cr>', opts)
map('n', '<leader>fh', '<cmd>Telescope oldfiles', opts)
map('n', '<leader>nf', '<cmd>:enew<cr>', opts)
map('n', '<leader>..', '<cmd>:e ~/.config/nvim/init.lua<cr>', opts)
map('n', '<leader>qq', '<cmd>:q<cr>', opts)
