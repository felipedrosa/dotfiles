set nocompatible
filetype off

" Automatic reloading of .vimrc
autocmd! bufwritepost .vimrc source %

" Better copy & paste
set pastetoggle=<F2>
set clipboard=unnamed

" when using :make it'll compile using gcc
set makeprg=gcc\ -o\ %<\ %

" improves behavior of mouse and backspace
set mouse=a   " on OSX press ALT and click
set bs=2      " make backspace behave normal
set showcmd   " show current command on status bar 

" rebinds the <Leader> key
" <Leader> key is the key that lets you create new shortcuts
let mapleader = ","

set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()

Plugin 'gmarik/vundle'
Plugin 'scrooloose/nerdtree.git'
Plugin 'tpope/vim-fugitive'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='molokai'
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

"Plugin 'jistr/vim-nerdtree-tabs'
"let g:nerdtree_tabs_open_on_console_startup=1
"let NERDTreeShowHidden=1

Plugin 'flazz/vim-colorschemes'

Plugin 'ctrlpvim/ctrlp.vim'
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

Plugin 'klen/python-mode'
let python_highlight_all=1

call vundle#end()
filetype plugin indent on
colorscheme molokai 
syntax on

set number  " display the line number
set relativenumber  " all line numbers are relative to current
set cursorline     " highlight the current line on cursor
set scrolloff=10   " distance from top/bottom when scrolling vertically
set foldmethod=indent " folds same indent level together
set foldlevel=99
" set dictionary+=~/q/qcmds.txt

" some search options
set incsearch    " go to first match of search as you type
set hlsearch     " highlight search results
set smartcase    " better search

" Disable system backup and swap files - they trigger stupid events
set nobackup
set nowritebackup
set noswapfile

" Expand tab to be 2 spaces
set tabstop=2
set smarttab
set shiftwidth=2
set expandtab

set wrap

" Escape key brings back normal mode 
"      and so does jj (no need to take right hand from keyboard) 
inoremap jj <Esc>

" re-maps ctrl+w+(direction) to just ctrl+(direction)
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" za is the shortcut for opening a fold, space is more intuitive
nnoremap <space> za

" easier moving between tabs (remember leader key above remmaped to ','
map <Leader>n <esc>:tabprevious<CR>
map <Leader>m <Esc>:tabnext<CR>

" Disables the arrow keys to force your lazy ass to use hjkl
noremap  <Up> ""
noremap! <Up> <Esc>
noremap  <Down> ""
noremap! <Down> <Esc>
noremap  <Left> ""
noremap! <Left> <Esc>
noremap  <Right> ""
noremap! <Right> <Esc>

" maps the F8 key to save the current file, compile it using gcc and run 
"nnoremap <C-c> :!gcc % -Wall -o %<.out && ./%<.out<CR>

map <D-S-]> gt
map <D-S-[> gT
map <D-1> 1gt
map <D-2> 2gt
map <D-3> 3gt
map <D-4> 4gt
map <D-5> 5gt
map <D-6> 6gt
map <D-7> 7gt
map <D-8> 8gt
map <D-9> 9gt
map <D-0> :tablast<CR>
