"Start Loading  Plugins
call plug#begin('~/.nvim/plugged')

" fuzzy finder
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

Plug 'w0rp/ale'  " linter

Plug 'christoomey/vim-tmux-navigator'

" Code Completion
Plug 'roxma/nvim-completion-manager'
Plug 'mhartington/nvim-typescript'
Plug 'roxma/nvim-cm-tern',  {'do': 'npm install'}

Plug 'leafgarland/typescript-vim'
" Plug 'Valloric/MatchTagAlways'     "show matching html tags
Plug 'Raimondi/delimitMate'
Plug 'tpope/vim-commentary'
Plug 'scrooloose/nerdtree'

" Colors
Plug 'rafi/awesome-vim-colorschemes'
Plug 'tpope/vim-surround'
Plug 'robertmeta/nofrils'
Plug 'alessandroyorba/alduin'    "alduin color"
Plug 'ajmwagar/vim-deus'
Plug 'kristiandupont/shades-of-teal'
Plug 'pbrisbin/vim-colors-off'






Plug 'mileszs/ack.vim'

Plug 'tpope/vim-fugitive'


Plug 'justinmk/vim-sneak'

Plug 'sjl/gundo.vim'


call plug#end()
"-----------------------ABILITY CONFIGURATION ----------------------
"  Basic and pretty much needed settings to provide a solid base for
"  source code editting

" set t_Co=256 "for white background

filetype plugin indent on
filetype plugin on
syntax on


set visualbell    "stops error bell
set noswapfile
set nobackup
set hidden

set ruler

set nowrap

set wildmenu
set lazyredraw

"show commands
set showcmd


set wildignore+=**/node_modules/**
set wildignore+=**/bower_components/**
set wildignore+=**/dump/**
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*


"backspace stuff
set backspace=indent,eol,start

" reload files changed outside vim
set autoread

" encoding is utf 8
set encoding=utf-8

" set case insensitive
set ignorecase

"---------------INDENTATION-----------------------------------------
set expandtab       " use spaces instead of tabs
set autoindent      " autoindent based on line above, works most of the time
set smartindent     " smarter indent for C-like languages
set shiftwidth=2    " when reading, tabs are 4 spaces
set softtabstop=2   " in insert mode, tabs are 4 spaces




"----------------------------------------------VIEW UI------------------------

"Colors
set termguicolors
colorscheme off


set number relativenumber
set cursorline

"highlight LineNr ctermfg=white
"highlight CursorLineNr term=bold 
"------------------------------ MAPPINGS---------------------
let mapleader=" "

inoremap <leader>;  <Esc>A;<CR>
nnoremap <leader>; A;<esc>

inoremap <leader><CR> <Esc>o

"remap jk to Esc
inoremap jk <Esc>
inoremap kj <Esc>
vnoremap jk <Esc>
vnoremap kj <Esc>
"
map NERDTree toggle to Ctrl-n and Alt-n to find current file 
map <Leader>n :NERDTreeToggle<CR>
map <Leader>m :NERDTreeFind<CR>

"move between split screens quicker
nmap <C-h> <C-w>h
nmap <C-l> <C-w>l
nmap <C-k> <C-w>k
nmap <C-j> <C-w>j

"jump to beginning/end of line
nnoremap H ^
nnoremap L $
vnoremap H ^
vnoremap L $  

"remap f for Sneak
"nmap f <Plug>Sneak_s
"nmap F <Plug>Sneak_S
"xmap f <Plug>Sneak_s
"xmap F <Plug>Sneak_S
"omap f <Plug>Sneak_s
"omap F <Plug>Sneak_S

nnoremap <Leader>w :w!<CR>
nnoremap <Leader>q :q<CR>



map <C-p> :FZF<CR>


" for vim-commentary
nmap <Leader>c gc
vmap <Leader>c gc

"--------------------------STATUS LINE------------------------------
set statusline=%{fugitive#head()}\ \%<%f\ %h%m%r%=%-1.(%l,%c%V%)\ %y


"----------------------------NVIM COMPLETION MANAGER---------------
" use <tab> for completion
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

"----------------------------Delimiteate------------------------------
let delimitMate_expand_cr=2    "set enter to expand function a la sublime

"----------------------------ACK ------------------------
"let g:ackprg = 'ag --vimgrep'
"let g:ackprg = 'ag --nogroup --nocolor --column'

