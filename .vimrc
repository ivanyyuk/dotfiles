
set nocompatible

"Start Loading  Plugins
call plug#begin()

Plug 'kien/ctrlp.vim'
"Plug 'w0rp/ale'    "I think this is what causes my kj bug. 
Plug 'moll/vim-node'  

Plug 'scrooloose/nerdcommenter'

"Neovim stuff
"Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
 Plug 'Valloric/YouCompleteMe'
"Plug 'ternjs/tern_for_vim', { 'do': 'npm install' }

Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'Raimondi/delimitMate'

Plug 'tpope/vim-surround'

Plug 'scrooloose/nerdtree' 

Plug 'Valloric/MatchTagAlways'     "show matching html tags

Plug 'flazz/vim-colorschemes'
Plug 'alessandroyorba/alduin'    "alduin color"
Plug 'quanganhdo/grb256' 
Plug 'joshdick/onedark.vim' 
Plug 'NLKNguyen/papercolor-theme'                      " Paper color inspired by Google Material Design
Plug 'tyrannicaltoucan/vim-deep-space'                 " deep space: intergalactically friendly color scheme
Plug 'jacoborus/tender.vim'                            " 24bit color scheme
Plug 'bcicen/vim-vice'                                 " Dark and vibrant colorscheme
Plug 'fcpg/vim-orbital'
Plug 'KeitaNakamura/neodark.vim'
Plug 'frankier/neovim-colors-solarized-truecolor-only'
Plug 'crusoexia/vim-monokai'
Plug 'raphamorim/lucario'

Plug 'regedarek/ZoomWin'           "<C-w>o to toggle zooming in to current window

Plug 'vim-syntastic/syntastic'

"Plug 'pangloss/vim-javascript'
Plug 'othree/yajs.vim', {'for': 'javascript'}
"Plug 'othree/javascript-libraries-syntax.vim'
Plug  'mxw/vim-jsx'  
"Plug 'othree/es.next.syntax.vim'
Plug 'leafgarland/typescript-vim'

Plug 'easymotion/vim-easymotion'

Plug 'matze/vim-move'

Plug 'mileszs/ack.vim'

Plug 'tpope/vim-fugitive'

"Plug 'terryma/vim-multiple-cursors'

"Plug 'justinmk/vim-sneak'

Plug 'junegunn/goyo.vim'  "distraction free writing"

call plug#end()
"-----------------------ABILITY CONFIGURATION ----------------------
"  Basic and pretty much needed settings to provide a solid base for
"  source code editting


filetype plugin indent on
filetype plugin on
syntax on

set visualbell    "stops error bell
set noswapfile
set nobackup
set hidden

set cursorline
set ruler

set nowrap

set wildmenu

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
"set termguicolors
set background=dark
colorscheme lucius
"let g:onedark_termcolors=256

"font
set guifont=Monaco:h13 

set relativenumber number
highlight LineNr ctermfg=grey
highlight CursorLineNr term=bold ctermfg=yellow  guifg=yellow 
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
"map NERDTree toggle to Ctrl-n and Alt-n to find current file 
map <Leader>n :NERDTreeToggle<CR>
map <Leader>m :NERDTreeFind<CR>

"move between split screens quicker
nmap <C-h> <C-w>h
nmap <C-l> <C-w>l
nmap <C-k> <C-w>k
nmap <C-j> <C-w>j

"move cursor in insert mode
imap <C-h> <Left>
imap <C-j> <Down>
imap <C-k> <Up>
imap <C-l> <Right>


"jump to beginning/end of line
nnoremap H ^
nnoremap L $
vnoremap H ^
vnoremap L $

"remap f for Sneak
nmap f <Plug>Sneak_s
nmap F <Plug>Sneak_S
xmap f <Plug>Sneak_s
xmap F <Plug>Sneak_S
omap f <Plug>Sneak_s
omap F <Plug>Sneak_S

nnoremap <Leader>w :w!<CR>
nnoremap <Leader><Leader>q :q<CR>

"Alt shift F to align all lines like vs code 
map Ï gg=G''   
"-------------------------------NERDTREE SETUP---------------------


"----------------------------AIRLINE SETUP--------------------------
let g:jirline_powerline_fonts = 1
set laststatus=2
set ttimeoutlen=50
let g:airline_theme='onedark'
"---------------------------CTRL-P----------------------------------
let g:ctrlp_max_files=0

"----------------------------VIM_REACT------------------------------
let g:jsx_ext_required=0    "allow syntax for .js files as well as .jsx

"----------------------------Delimiteate------------------------------
let delimitMate_expand_cr=2    "set enter to expand function a la sublime

"----------------------------ACK ------------------------
"let g:ackprg = 'ag --vimgrep' 
let g:ackprg = 'ag --nogroup --nocolor --column'

"--------------------------VIM MOVE--------------------------
"Alt and the jk keys 
nmap ∆ <Plug>MoveLineDown
nmap ˚ <Plug>MoveLineUp
vmap ∆ <Plug>MoveBlockDown
vmap ˚ <Plug>MoveBlockUp

"-----------------------VIM MULTITREE----------------------
"let g:multi_cursor_use_default_mapping=0

"let g:multi_cursor_next_key='<C-n>'
"let g:multi_cursor_prev_key='<C-p>'
"let g:multi_cursor_skip_key='<C-x>'
"let g:multi_cursor_quit_key='<C-c>'

"----------------YOU COMPLETE ME
let g:ycm_autoclose_preview_window_after_completion=1    "preview window 

"------------------MATCH TAG ALWAYS--------------------------------
let g:mta_use_matchparen_group = 1

"------------------------DEOPLETE---------------------- 
"neo vim auto complete
"let g:deoplete#enable_at_startup=1
"if !exists('g:deoplete#omni#input_patterns')
  "let g:deoplete#omni#input_patterns = {}
"endif


"------------------------SYNTASTIC---------------------
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_javascript_checkers = ['eslint']
