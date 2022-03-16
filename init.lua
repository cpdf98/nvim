vim.cmd('source ~/.config/nvim/plug/plugins.vim')
vim.cmd('source ~/.config/nvim/settings/mappings.vim')
vim.cmd('source ~/.config/nvim/settings/general.vim')
vim.cmd('source ~/.config/nvim/config/dashboard.vim')
vim.cmd('source ~/.config/nvim/settings/term.vim')
vim.cmd('source ~/.config/nvim/config/signify.vim')
vim.cmd('source ~/.config/nvim/config/wilder.vim')
require('settings.mappings')
require('settings.color')
require('tree')
require('pairs')
require('notifyP')
require('buff')
vim.cmd('source ~/.config/nvim/config/floaterm.vim')
vim.cmd('source ~/.config/nvim/config/nerdtree.vim')
vim.cmd('source ~/.config/nvim/config/gBlame.vim')
require('config.lsp.lspinstaller')
require('config.lsp.cmp')
require('config.lsp.lspkin')
require('config.blank')
require('config.lLine')
require('config.tele')
require('config.vide')
