local map = require('settings.utils').map
vim.g.gitblame_message_template = "<summary> • <date> • <author>"
vim.g.gitblame_enabled = 0
map('n', '<C-g>', ':GitBlameToggle<CR>', opts)
