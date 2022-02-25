call plug#begin('~/.vim/plugged')

Plug 'https://github.com/vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'https://github.com/preservim/nerdtree'
Plug 'https://github.com/ryanoasis/vim-devicons'
Plug 'https://github.com/rafi/awesome-vim-colorschemes'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'akinsho/bufferline.nvim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'patstockwell/vim-monokai-tasty'
Plug 'tanvirtin/monokai.nvim'
Plug 'f-person/git-blame.nvim'

if has('nvim') || has('patch-8.0.902')
  Plug 'mhinz/vim-signify'
else
  Plug 'mhinz/vim-signify', { 'branch': 'legacy' }
endif

call plug#end()

colorscheme jellybeans

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

nmap <F6> :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"
let g:NERDTreeGitStatusWithFlags = 1

inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap <S-Tab> <C-d>
let g:loaded_matchparen=1

nnoremap <C-n> :bnext<CR>
nnoremap <C-p> :bprevious<CR>
nnoremap <C-c> :term<CR>

set termguicolors
lua << EOF
require("bufferline").setup{}
EOF

let g:airline#extensions#tabline#enabled = 1

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
