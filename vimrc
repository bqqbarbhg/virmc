set backspace=2
syntax on
filetype indent on
set autoindent
set number
colorscheme desert
set nobackup
colors desert
set nocompatible

nnoremap <C-J> J
nnoremap K {
nnoremap J }
nnoremap <C-K> J
vnoremap K {
vnoremap J }
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
nnoremap Y y$

command! Rc :so ~/.vimrc
command! W w

