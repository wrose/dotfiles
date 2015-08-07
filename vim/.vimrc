" This must be first, because it changes other options as side effect
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/Vundle.vim'

" Bundles
Bundle 'flazz/vim-colorschemes'
Bundle 'kien/ctrlp.vim'
Bundle 'Raimondi/delimitMate'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/syntastic'
Plugin 'bling/vim-airline'
Bundle 'edkolev/tmuxline.vim'
Plugin 'derekwyatt/vim-scala'


call vundle#end()
filetype plugin indent on

" turn on airline
set laststatus=2

" change the mapleader from \ to ,
let mapleader=","

" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

set hidden

set clipboard=unnamed
set nowrap        " don't wrap lines
set expandtab
set tabstop=2     " a tab is four spaces
set backspace=indent,eol,start
                  " allow backspacing over everything in insert mode
set autoindent    " always set autoindenting on
set copyindent    " copy the previous indentation on autoindenting
set number        " always show line numbers
set shiftwidth=4  " number of spaces to use for autoindenting
set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'
set showmatch     " set show matching parenthesis
set ignorecase    " ignore case when searching
set smartcase     " ignore case if search pattern is all lowercase,
                  "    case-sensitive otherwise
set smarttab      " insert tabs on the start of a line according to
                  "    shiftwidth, not tabstop
set hlsearch      " highlight search terms
set incsearch     " show search matches as you type

set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo
set wildignore=*.swp,*.bak,*.pyc,*.class
set title                " change the terminal's title
set visualbell           " don't beep
set noerrorbells         " don't beep

set nobackup
set noswapfile

let g:airline_theme= 'dark'
"set background=dark

"if &t_Co >= 256 || has("gui_running")
	"colorscheme monokain
"endif

if &t_Co > 2 || has("gui_running")
   " switch syntax highlighting on, when the terminal has colors
   syntax on
endif

set pastetoggle=<F2>

" no shift for command mode
noremap ; :

" no arrow keys
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" multiple window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
map <C-x> :!reattach-to-user-namespace pbcopy<CR>
map <C-c> :w !reattach-to-user-namespace pbcopy<CR><CR>

" clear search history
nmap <silent> <leader>/ :nohlsearch<CR>

cmap w!! w !sudo tee % >/dev/null

let g:SuperTabDefaultCompletionType = 'context'
let g:EclimCompletionMethod = 'omnifunc'
let g:syntastic_javascript_checkers = ['jshint']

noremap <leader>o <Esc>:CommandT<CR>
noremap <leader>O <Esc>:CommandTFlush<CR>
noremap <leader>m <Esc>:CommandTBuffer<CR>

set tags=tags;/

set guifont=Inconsolata\ for\ Powerline:h15
let g:Powerline_symbols = 'fancy'
set encoding=utf-8
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
set term=xterm-256color
set termencoding=utf-8
colorscheme monokain
