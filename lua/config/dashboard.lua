vim.g.dashboard_default_executive = 'clap'
vim.g.dashboard_custom_header = {
" ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗",
" ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║",
" ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║",
" ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║",
" ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║",
" ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝",
}

vim.g.dashboard_custom_section={
	a = { description = {' Find File 		SPC ff'}, command = 'Clap files ++finder=rg --ignore --hidden --files'},
	b = { description = {'ﭯ History   		SPC fh'}, command = 'Clap history'},
	c = { description = {' New File  		SPC nf'}, command = ':enew'},
	d = { description = {' init.lua  		SPC ..'}, command = ':e ~/.config/nvim/init.lua'},
	f = { description = {'Exit Neovim 		SPC qq'}, command = ':q'}
}
