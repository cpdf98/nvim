vim.g.dashboard_default_executive = 'telescope'
vim.g.indentLine_fileTypeExclude = 'dashboard'
vim.g.dashboard_custom_header = {
" ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗",
" ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║",
" ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║",
" ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║",
" ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║",
" ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝",
}

vim.g.dashboard_custom_section={
	a = { description = {' Find File 		SPC ff'}, command = 'Telescope find_files hidden=true'},
	b = { description = {'ﭯ History   		SPC fh'}, command = 'Telescope oldfiles'},
	c = { description = {' New File  		SPC nf'}, command = ':enew'},
	d = { description = {' init.lua  		SPC ..'}, command = ':e ~/.config/nvim/init.lua'},
	f = { description = {'Exit Neovim 		SPC qq'}, command = ':q'}
}

