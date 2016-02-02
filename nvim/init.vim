" personal config
set number
set mouse=a
syntax on
colorscheme pablo 

:set clipboard=unnamed
:set clipboard=unnamedplus

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdtree'

Plugin 'scrooloose/syntastic'

Plugin 'itchyny/lightline.vim'

Plugin 'fatih/vim-go'

Plugin 'Shougo/deoplete.nvim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

set t_Co=256
set guifont=Iosevka\ 11
set laststatus=2
set tabstop=4
set shiftwidth=4
set expandtab

command Rootsave w !sudo tee % C
map <C-n> :NERDTreeToggle<CR>

" lightline

let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'component': {
      \   'readonly': '%{&readonly?"":""}',
      \ },
      \ 'separator': { 'left': '', 'right': '' },
      \ 'subseparator': { 'left': '', 'right': '' }
      \ }

let g:deoplete#enable_at_startup = 1
