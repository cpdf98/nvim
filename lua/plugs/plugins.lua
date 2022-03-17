local Plug = vim.fn['plug#']
vim.call('plug#begin', '~/.config/nvim/plugged')

	Plug 'https://github.com/ryanoasis/vim-devicons'
	Plug 'https://github.com/rafi/awesome-vim-colorschemes'
	Plug 'kyazdani42/nvim-web-devicons'
	Plug 'akinsho/bufferline.nvim'
	Plug 'f-person/git-blame.nvim'
	Plug 'kdheepak/lazygit.nvim'
	Plug 'https://github.com/roxma/nvim-yarp.git'
	Plug 'https://github.com/lambdalisue/nerdfont.vim.git'
	Plug 'https://github.com/romgrk/fzy-lua-native.git'
	Plug 'https://github.com/nixprime/cpsm.git'
	Plug 'https://github.com/sharkdp/fd.git'
	Plug 'https://github.com/xiyaowong/nvim-cursorword.git'
	Plug 'https://github.com/alec-gibson/nvim-tetris.git'
	Plug 'https://github.com/seandewar/nvimesweeper.git'
	Plug('nvim-treesitter/nvim-treesitter', {['do'] = ':TSUpdate'})
	Plug 'https://github.com/rcarriga/nvim-notify.git'
	Plug 'SmiteshP/nvim-gps'
	Plug 'https://github.com/tpope/vim-fugitive.git'
	Plug 'https://github.com/windwp/nvim-autopairs.git'
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
	Plug 'nvim-lua/plenary.nvim'
	Plug 'glepnir/dashboard-nvim'
	Plug 'lukas-reineke/indent-blankline.nvim'
	Plug 'folke/trouble.nvim'
	Plug 'voldikss/vim-floaterm'
	Plug 'preservim/nerdtree'
	Plug('junegunn/fzf', { ['do'] = vim.fn['fzf#install']})
	Plug 'junegunn/fzf.vim'
	Plug 'liuchengxu/vim-clap'
	Plug 'nvim-lualine/lualine.nvim'
	Plug 'nvim-lua/plenary.nvim'
	Plug 'nvim-telescope/telescope.nvim'
	Plug 'mhinz/vim-signify'
	Plug 'gelguy/wilder.nvim'
	Plug 'roxma/nvim-yarp'
	Plug 'roxma/vim-hug-neovim-rpc'

vim.call('plug#end')
