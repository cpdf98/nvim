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
		\ 'description': [' Find File '],
		\ 'command': 'Telescope find_files hidden=true' },
	\ 'b': {
		\ 'description': ['ﭯ History   '],
		\ 'command': 'Telescope oldfiles'},
	\ 'c': {
		\ 'description': [' New File  '],
		\ 'command': ':enew'},
	\ 'd': {
		\ 'description': [' init.vim  '],
		\ 'command': ':e ~/.config/nvim/init.vim'},
	\ 'f': {
		\ 'description': ['Exit Neovim '],
		\ 'command': ':q'},
\ }
