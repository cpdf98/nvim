let g:dashboard_default_executive ='clap'

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
		\ 'command': 'Clap files ++finder=rg --ignore --hidden --files' },
	\ 'b': {
		\ 'description': ['ﭯ History   '],
		\ 'command': 'Clap history'},
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
