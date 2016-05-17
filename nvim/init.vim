" personal config
set number
set mouse=a
syntax on
set noshowmode

set clipboard=unnamed
set clipboard=unnamedplus
set autoindent

set smarttab

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
Plug 'jiangmiao/auto-pairs'
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

" wild menu
set wildmenu
set wildmode=list:longest,full

" highlight current line
set cursorline

set completeopt=longest,menuone

" nerdtree things
let NERDTreeDirArrows=1
let NERDTreeMinimalUI=1

" bind panes moves with ctrl+arrow keys 
nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR><Paste>

" map Ctrl+w == save and exit
map <A-w> :wq<CR>

" map Alt-t to new terminal
map <A-t> :tabnew<CR>:terminal<CR>

let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_interfaces = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_fmt_command = "gofmt"
let g:deoplete#enable_at_startup = 1
" Show a list of interfaces which is implemented by the type under your cursor
au FileType go nmap <Leader>s <Plug>(go-implements)

" Show type info for the word under your cursor
au FileType go nmap <Leader>i <Plug>(go-info)

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
