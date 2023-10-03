set number

set autoread

" Indention
set tabstop=2
set softtabstop=2
set expandtab
set shiftwidth=2
set smartindent
set autoindent
set smarttab
set ignorecase
set smartcase
set noswapfile

" Make vim Copy to System Clipboard
set clipboard+=unnamedplus

" Vim Split Pane Border
set fillchars+=vert:\ 

" Vim Plugins
call plug#begin('~/.config/nvim/plugged')
" Plug
Plug 'kiteco/vim-plugin'
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
Plug 'ethanholz/nvim-lastplace'
Plug 'ryanoasis/vim-devicons'
Plug 'windwp/nvim-autopairs'
Plug 'tomtom/tcomment_vim'
Plug 'Yggdroot/indentLine'

" Native language server
Plug 'neovim/nvim-lspconfig'

" CMP autocomplete configuration
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'

Plug 'L3MON4D3/LuaSnip'

Plug 'nvim-lualine/lualine.nvim'
call plug#end()

" Colors
set background=dark
set termguicolors
colorscheme catppuccin

set mouse=a
set updatetime=100

let mapleader=' '

" virtualenv host python overwrite
let g:python3_host_prog = "/home/rrittste/.pyenv/versions/3.11.2/envs/neovim/bin/python"

" Disable Perl
let g:loaded_perl_provider = 0

set completeopt=menu,menuone,noselect

lua require('lualine').setup()
lua require('lsp')
lua require('cmp-config')
lua require('nvim-autopairs').setup {}
