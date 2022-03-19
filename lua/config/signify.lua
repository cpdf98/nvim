vim.cmd('set updatetime=100')
vim.g.signify_sign_add               = '▍'
vim.g.signify_sign_delete            = '▍'
vim.g.signify_sign_delete_first_line = '▍'
vim.g.signify_sign_change            = '▍'

vim.cmd([[
highlight clear SignColumn
highlight SignifySignAdd    ctermfg=green  guifg=#00ff00 cterm=NONE gui=NONE
highlight SignifySignDelete ctermfg=red    guifg=#ff0000 cterm=NONE gui=NONE
highlight SignifySignChange ctermfg=blue guifg=#3630E1 cterm=NONE gui=NONE
]])

