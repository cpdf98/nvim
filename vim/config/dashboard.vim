let g:dashboard_default_executive ='Telescope'

let g:dashboard_custom_header = [
\ ' ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗',
\ ' ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║',
\ ' ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║',
\ ' ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║',
\ ' ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║',
\ ' ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝',
\]

let g:indentLine_fileTypeExclude = ['dashboard']
let g:dashboard_custom_section={
	\ 'a': {
		\ 'description': [' Find File 		SPC ff'],
		\ 'command': 'Telescope find_files hidden=true' },
	\ 'b': {
		\ 'description': ['ﭯ History   		SPC fh'],
		\ 'command': 'Telescope oldfiles'},
	\ 'c': {
		\ 'description': [' New File  		SPC nf'],
		\ 'command': ':enew'},
	\ 'd': {
		\ 'description': [' init.lua  		SPC ..'],
		\ 'command': ':e ~/.config/nvim/init.lua'},
	\ 'f': {
		\ 'description': ['Exit Neovim 		SPC qq'],
		\ 'command': ':q'},
\ }

nnoremap <SPACE> <Nop>
let mapleader=" "
nmap <leader>ff <cmd>Telescope find_files<cr>
nmap <leader>fh <cmd>Telescope oldfiles<cr>
nmap <leader>nf <cmd>:enew<cr>
nmap <leader>.. <cmd>:e ~/.config/nvim/init.lua<cr>
nmap <leader>qq <cmd>:q<cr>
