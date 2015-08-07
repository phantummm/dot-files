set nocompatible
syntax enable

" Vundler stuff
" To update, source ~/.vimrc.bundles and then :PluginInstall
filetype on
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

if filereadable(expand("~/.vimrc.bundles"))
  source ~/.vimrc.bundles
endif

call vundle#end()

filetype plugin indent on
filetype on

colorscheme solarized
highlight clear SignColumn

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#right_sep = ' '
let g:airline#extensions#tabline#right_alt_sep = '|'

set autoindent
set autoread
set backspace=2
set clipboard=unnamed
set directory-=.
set encoding=utf-8
set incsearch
set number
set ruler
set showcmd
set smartcase
set wildignore=log/**,node_modules/**,target/**,tmp/**,*.rbc,*.pyc
set hidden
set laststatus=2

" Opal-specific styles
set shiftwidth=4
set softtabstop=4
set tabstop=4
" set expandtab

set mouse=a

" keyboard shortcuts
let mapleader = ','

noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
noremap <C-S-l> :vsplit<CR>
noremap <C-S-j> :split<CR>
nnoremap <Tab> :bn<CR>
nnoremap <S-Tab> :bp<CR>
nnoremap <C-w> :bd<CR>
nnoremap <C-W> :bd!<CR>

nnoremap <leader>p :e ~/.vimrc<CR>
nnoremap <leader>P :e ~/.vimrc.bundles<CR>
nnoremap <leader>S :source ~/.vimrc<CR>

nnoremap <leader>d :NERDTreeToggle<CR>
nnoremap <leader>f :NERDTreeFind<CR>
nnoremap <leader>t :CtrlP<CR>
nnoremap <leader>T :CtrlPClearCache<CR>:CtrlP<CR>
