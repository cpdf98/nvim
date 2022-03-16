vim.api.nvim_command([[
augroup TerminalStuff
au!
autocmd TermOpen * setlocal nonumber norelativenumber
augroup end
]])
