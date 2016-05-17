" personal config
set number
set mouse=a
syntax on
set noshowmode

:set clipboard=unnamed
:set clipboard=unnamedplus

" set the Plug directory in a variable
let PlugDir = "~/.config/nvim/plugged"

call plug#begin(PlugDir)
Plug 'VundleVim/Vundle.vim'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'itchyny/lightline.vim'
Plug 'fatih/vim-go'
Plug 'Shougo/deoplete.nvim'
Plug 'zchee/deoplete-go', { 'do': 'make'}
Plug 'majutsushi/tagbar'
Plug 'tpope/vim-fugitive'
Plug 'NLKNguyen/papercolor-theme'
call plug#end()

filetype plugin indent on

" some custom binds
command Rootsave w !sudo tee % C
map <C-n> :NERDTreeToggle<CR>
map <F8> :TagbarToggle<CR>

" fugitive thingy
map <C-S-s> :Gstatus<CR>
map <C-S-c> :Gcommit<CR>
map <C-S-d> :Gdiff<CR>
map <C-S-p> :Gpull<CR>
map <C-S-a> :Gpush<CR>

" bind panes moves with ctrl+arrow keys 
nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR><Paste>

" map Ctrl+w == save and exit
map <A-w> :wq<CR>

let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_interfaces = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:deoplete#enable_at_startup = 1

set t_Co=256
set background=light
colorscheme PaperColor

" lightline
let g:lightline = {
      \ 'colorscheme': 'PaperColor',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'fugitive', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component': {
      \   'readonly': '%{&readonly?"":""}',
      \	  'fugitive': '%{exists("*fugitive#head")?fugitive#head():""}',
      \ },
      \ 'component_visible_condition': {
      \   'readonly': '(&filetype!="help"&& &readonly)',
      \   'modified': '(&filetype!="help"&&(&modified||!&modifiable))',
      \   'fugitive': '(exists("*fugitive#head") && ""!=fugitive#head())'
      \ },
      \ 'separator': { 'left': '', 'right': '' },
      \ 'subseparator': { 'left': '', 'right': '' }
      \ }
