require'FTerm'.setup({
    border = 'double',
    dimensions  = {
        height = 0.9,
        width = 0.9,
    },
})

-- Example keybindings
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

map('n', '<C-c>', '<CMD>lua require("FTerm").toggle()<CR>', opts)
map('t', '<C-c>', '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>', opts)
