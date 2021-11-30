set termguicolors
set mouse=a
set number
let mapleader=","

set noshowmode 
call plug#begin('~/.vim/plugged')

Plug 'neovim/nvim-lspconfig'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/nvim-treesitter-textobjects'
Plug 'ms-jpq/coq_nvim', {'branch': 'coq'}
Plug 'ms-jpq/coq.artifacts', {'branch': 'artifacts'}
Plug 'Shatur/neovim-ayu'
Plug 'nvim-lualine/lualine.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'ms-jpq/chadtree', {'branch': 'chad', 'do': 'python3 -m chadtree deps'}
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-lua/popup.nvim'
Plug 'crispgm/nvim-go'
Plug 'euclidianAce/BetterLua.vim'
Plug 'nvim-telescope/telescope.nvim'

call plug#end()

lua require('config')

colorscheme ayu

nnoremap <leader>l <cmd>call setqflist([])<cr>
nnoremap <leader>n <cmd>CHADopen --nofocus<CR>
nnoremap <C-n> <cmd>CHADopen --version-ctl --nofocus<CR>

nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

