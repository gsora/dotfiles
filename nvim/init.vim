" personal config
set number
set mouse=a
syntax on
colorscheme pablo 

:set clipboard=unnamed
:set clipboard=unnamedplus

call plug#begin('~/.config/nvim/plugged')
Plug 'VundleVim/Vundle.vim'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'itchyny/lightline.vim'
Plug 'fatih/vim-go'
Plug 'Shougo/deoplete.nvim'
Plug 'zchee/deoplete-go', { 'do': 'make'}
Plug 'majutsushi/tagbar'
Plug 'tpope/vim-fugitive'
call plug#end()

filetype plugin indent on

set t_Co=256

command Rootsave w !sudo tee % C
map <C-n> :NERDTreeToggle<CR>
map <F8> :TagbarToggle<CR>

" lightline
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'component': {
      \   'readonly': '%{&readonly?"":""}',
      \ },
      \ 'separator': { 'left': '', 'right': '' },
      \ 'subseparator': { 'left': '', 'right': '' }
      \ }
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_interfaces = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:deoplete#enable_at_startup = 1
