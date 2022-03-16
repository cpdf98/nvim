if vim.g.neovide == true then
    --vim.cmd 'set guifont=Hack\ NF:h10'
    --vim.o.guifont='Consolas:h10'
    --vim.o.guifont='FiraCode NF:h11'
    --vim.o.guifont='Operator Mono,FiraCode NF:h12'
    vim.api.nvim_set_keymap('n', '<F11>', ":let g:neovide_fullscreen = !g:neovide_fullscreen<CR>", {})
end
