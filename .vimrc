" pathogen settings

call pathogen#infect()
filetype plugin indent on

" basic settings
syntax on
set nocompatible
set modelines=0

" indent, spaces, tabs

set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

" various stuff
" TODO comment these

set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2

" show relative number lines on the left
set relativenumber

" persistent undo in <FILENAME>.un~
set undofile

" , instead of \ as the leader key
let mapleader = ","

" use perl regexes in search
nnoremap / /\v
vnoremap / /\v

" ignore case in searches if all used characters in search are lowercase
" if any character in search is uppercase, do case sensitive match
set ignorecase
set smartcase

" all replacements are global, use /g if nonglobal replace is needed
set gdefault

" show search results
set incsearch
set showmatch
set hlsearch

" erase the search highlight
nnoremap <leader><space> :noh<cr>

" use <tab> instead of % for bracket pairing
nnoremap <tab> %
vnoremap <tab> %

" long lines handling
set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=85

" teach yourself not to use insert mode for text navigation
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk

" hitting ; is easier than :
nnoremap ; :

" save when focus is lost
au FocusLost * :wa

" rehardwrap paragraph of text
nnoremap <leader>q gqip

" reselect just pasted text in order to be able to perform an action on it
nnoremap <leader>v V`]

" open vimrc in split window
nnoremap <leader>ev <C-w><C-v><C-l>:e $MYVIMRC<cr>
