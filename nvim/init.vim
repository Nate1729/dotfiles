syntax enable
set hidden
set encoding=utf-8

" Simple stuff
set novisualbell
set cmdheight=2
set splitright "Preference
set tabstop=2
set shiftwidth=2
set showtabline=4
set number
set relativenumber
set smarttab
set expandtab
set showmode showcmd
set lazyredraw
set nowrap "Confuses everyone anyways
set ai "autoindent
set si "smart indent
set showmatch "highlight matching parens


" Search through subfolders
set path+=**
set wildmenu
set wildignore+=*/node_modules/*,*/browser_components/*,*/public/*

"Plugins
call plug#begin()
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'tpope/vim-fugitive'
Plug 'preservim/nerdtree' |
  \ Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'nvim-lualine/lualine.nvim'
Plug 'lifepillar/vim-solarized8'
Plug 'morhetz/gruvbox'

call plug#end()

"Colors 
set termguicolors
colorscheme solarized8 

" -- Remapping --"
" Telescope
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>


runtime! syntax/markdown.vim
