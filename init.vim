"Plugins
call plug#begin('~/.vim/plugged')

	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'https://github.com/preservim/nerdtree'
	Plug 'https://github.com/ryanoasis/vim-devicons'
	Plug 'https://github.com/rafi/awesome-vim-colorschemes'
	Plug 'kyazdani42/nvim-web-devicons'
	Plug 'akinsho/bufferline.nvim'
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'f-person/git-blame.nvim'
	Plug 'kdheepak/lazygit.nvim'
	Plug 'https://github.com/roxma/nvim-yarp.git'
	Plug 'https://github.com/lambdalisue/nerdfont.vim.git'
	Plug 'https://github.com/romgrk/fzy-lua-native.git'
	Plug 'https://github.com/nixprime/cpsm.git'
	Plug 'https://github.com/sharkdp/fd.git'
	Plug 'voldikss/vim-floaterm'
	Plug 'https://github.com/xiyaowong/nvim-cursorword.git'
	Plug 'https://github.com/alec-gibson/nvim-tetris.git'
	Plug 'https://github.com/seandewar/nvimesweeper.git'
	Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
	Plug 'https://github.com/rcarriga/nvim-notify.git'
	Plug 'SmiteshP/nvim-gps'
	Plug 'https://github.com/tpope/vim-fugitive.git'
	Plug 'https://github.com/windwp/nvim-autopairs.git'
	Plug 'kosayoda/nvim-lightbulb'
	if has('nvim') || has('patch-8.0.902')
	  Plug 'mhinz/vim-signify'
	else
	  Plug 'mhinz/vim-signify', { 'branch': 'legacy' }
	endif
	if has('nvim')
	  function! UpdateRemotePlugins(...)
		" Needed to refresh runtime files
		let &rtp=&rtp
		UpdateRemotePlugins
	  endfunction
	  Plug 'gelguy/wilder.nvim', { 'do': function('UpdateRemotePlugins') }
	else
	  Plug 'gelguy/wilder.nvim'

	  " To use Python remote plugin features in Vim, can be skipped
	  Plug 'roxma/nvim-yarp'
	  Plug 'roxma/vim-hug-neovim-rpc'
	endif

call plug#end()
"End plugins

" Coloschemes
colorscheme jellybeans 

" General settings
set number
syntax on
set mouse=a
set autochdir
set autowriteall
set showtabline=2
set tabstop=4
set shiftwidth=4
set smartindent
set cursorline

" Nerd tree settings
nmap <F6> :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"
let g:NERDTreeGitStatusWithFlags = 1

" Custom keybindings
nnoremap <C-n> :bnext<CR>
nnoremap <C-p> :bprevious<CR>
nnoremap <C-c> :FloatermNew<CR>
nnoremap <C-l> :LazyGit<CR>
nnoremap <F4> :w<CR>
nnoremap <F7> :bd<CR>

" No idea what this one does
set termguicolors

" Cusomize airlines
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='tomorrow'
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline#extensions#tabline#enabled = 1
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.dirty='⚡'

" Gitgutter
set updatetime=100
let g:signify_sign_add               = '+'
let g:signify_sign_delete            = '-'
let g:signify_sign_delete_first_line = '-'
let g:signify_sign_change            = '~'
highlight clear SignColumn
highlight SignifySignAdd    ctermfg=green  guifg=#00ff00 cterm=NONE gui=NONE
highlight SignifySignDelete ctermfg=red    guifg=#ff0000 cterm=NONE gui=NONE
highlight SignifySignChange ctermfg=yellow guifg=#ffff00 cterm=NONE gui=NONE

augroup TerminalStuff
   au!
  autocmd TermOpen * setlocal nonumber norelativenumber
augroup END

let g:gitblame_message_template = '<summary> • <date> • <author>'

call wilder#setup({'modes': [':', '/', '?']})
call wilder#set_option('pipeline', [
      \   wilder#branch(
      \     wilder#python_file_finder_pipeline({
      \       'file_command': {_, arg -> stridx(arg, '.') != -1 ? ['fd', '-tf', '-H'] : ['fd', '-tf']},
      \       'dir_command': ['fd', '-td'],
      \       'filters': ['cpsm_filter'],
      \     }),
      \     wilder#substitute_pipeline({
      \       'pipeline': wilder#python_search_pipeline({
      \         'skip_cmdtype_check': 1,
      \         'pattern': wilder#python_fuzzy_pattern({
      \           'start_at_boundary': 0,
      \         }),
      \       }),
      \     }),
      \     wilder#cmdline_pipeline({
      \       'fuzzy': 1,
      \       'fuzzy_filter': has('nvim') ? wilder#lua_fzy_filter() : wilder#vim_fuzzy_filter(),
      \     }),
      \     [
      \       wilder#check({_, x -> empty(x)}),
      \       wilder#history(),
      \     ],
      \     wilder#python_search_pipeline({
      \       'pattern': wilder#python_fuzzy_pattern({
      \         'start_at_boundary': 0,
      \       }),
      \     }),
      \   ),
      \ ])
let s:highlighters = [
      \ wilder#pcre2_highlighter(),
      \ has('nvim') ? wilder#lua_fzy_highlighter() : wilder#cpsm_highlighter(),
      \ ]
let s:popupmenu_renderer = wilder#popupmenu_renderer(wilder#popupmenu_border_theme({
      \ 'border': 'rounded',
      \ 'empty_message': wilder#popupmenu_empty_message_with_spinner(),
      \ 'highlighter': s:highlighters,
      \ 'left': [
      \   ' ',
      \   wilder#popupmenu_devicons(),
      \   wilder#popupmenu_buffer_flags({
      \     'flags': ' a + ',
      \     'icons': {'+': '', 'a': '', 'h': ''},
      \   }),
      \ ],
      \ 'right': [
      \   ' ',
      \   wilder#popupmenu_scrollbar(),
      \ ],
      \ }))
let s:wildmenu_renderer = wilder#wildmenu_renderer({
      \ 'highlighter': s:highlighters,
      \ 'separator': ' · ',
      \ 'left': [' ', wilder#wildmenu_spinner(), ' '],
      \ 'right': [' ', wilder#wildmenu_index()],
      \ })
call wilder#set_option('renderer', wilder#renderer_mux({
      \ ':': s:popupmenu_renderer,
      \ '/': s:wildmenu_renderer,
      \ 'substitute': s:wildmenu_renderer,
      \ }))

autocmd FileType java nnoremap <buffer> <F5> :w<esc>:FloatermNew java %<CR>
autocmd FileType c nnoremap <buffer> <F5> :w<esc>:FloatermNew gcc % && ./a.out && rm a.out<CR>
autocmd FileType cpp nnoremap <buffer> <F5> :w<esc>:FloatermNew g++ % && ./a.out && rm a.out<CR>
autocmd FileType python nnoremap <buffer> <F5> :w<esc>:FloatermNew python3 %<CR>
autocmd FileType cs nnoremap <buffer> <F5> :w<esc>:FloatermNew mcs %<CR>
let g:floaterm_autoclose=0

autocmd CursorHold,CursorHoldI * lua require'nvim-lightbulb'.update_lightbulb()

"Executes code for lua-based plugins
lua << EOF
	--bufferline
	require("bufferline").setup{}

	--config settings for nvim-notify
	vim.notify = require("notify")
	require("notify").setup({
	  stages = "slide",
	  on_open = nil,
	  on_close = nil,
	  render = "default",
	  timeout = 5000,
	  max_width = nil,
	  max_height = nil,
	  background_colour = "Normal",
	  minimum_width = 50,
	  icons = {
		ERROR = "",
		WARN = "",
		INFO = "",
		DEBUG = "",
		TRACE = "✎",
	  },
	})

	require('nvim-autopairs').setup{}

	-- Showing defaults
	require'nvim-lightbulb'.setup {
		-- LSP client names to ignore
		-- Example: {"sumneko_lua", "null-ls"}
		ignore = {},
		sign = {
			enabled = true,
			-- Priority of the gutter sign
			priority = 10,
		},
		float = {
			enabled = false,
			-- Text to show in the popup float
			text = "💡",
			-- Available keys for window options:
			-- - height     of floating window
			-- - width      of floating window
			-- - wrap_at    character to wrap at for computing height
			-- - max_width  maximal width of floating window
			-- - max_height maximal height of floating window
			-- - pad_left   number of columns to pad contents at left
			-- - pad_right  number of columns to pad contents at right
			-- - pad_top    number of lines to pad contents at top
			-- - pad_bottom number of lines to pad contents at bottom
			-- - offset_x   x-axis offset of the floating window
			-- - offset_y   y-axis offset of the floating window
			-- - anchor     corner of float to place at the cursor (NW, NE, SW, SE)
			-- - winblend   transparency of the window (0-100)
			win_opts = {},
		},
		virtual_text = {
			enabled = false,
			-- Text to show at virtual text
			text = "💡",
			-- highlight mode to use for virtual text (replace, combine, blend), see :help nvim_buf_set_extmark() for reference
			hl_mode = "replace",
		},
		status_text = {
			enabled = false,
			-- Text to provide when code actions are available
			text = "💡",
			-- Text to provide when no actions are available
			text_unavailable = ""
		}
	}
EOF
