local map = require('settings.utils').map
map('n', '<C-n>', ':bnext<CR>', opts)
map('n', '<C-p>', ':bprevious<CR>', opts)
map('n', '<C-l>', ':LazyGit<CR>', opts)
map('n', '<C-i>', ':w<CR>', opts)
map('n', '<C-h>', ':bd<CR>', opts)
map('n', '<F7>', ':so ~/.config/nvim/init.lua<CR>', opts)
