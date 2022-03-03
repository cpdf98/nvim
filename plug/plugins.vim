call plug#begin('~/.vim/plugged')

	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'https://github.com/preservim/nerdtree'
	Plug 'https://github.com/ryanoasis/vim-devicons'
	Plug 'https://github.com/rafi/awesome-vim-colorschemes'
	Plug 'kyazdani42/nvim-web-devicons'
	Plug 'akinsho/bufferline.nvim'
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
	Plug 'neovim/nvim-lspconfig'
	Plug 'williamboman/nvim-lsp-installer'
	Plug 'hrsh7th/nvim-cmp'
	Plug 'hrsh7th/vim-vsnip'
	Plug 'hrsh7th/vim-vsnip-integ'
	Plug 'https://github.com/onsails/lspkind-nvim.git'
	Plug 'https://github.com/hrsh7th/cmp-nvim-lsp.git'
	Plug 'https://github.com/hrsh7th/cmp-vsnip.git'
	Plug 'https://github.com/hrsh7th/cmp-path.git'
	Plug 'hrsh7th/cmp-buffer'
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
