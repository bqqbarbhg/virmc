" Pathogen
execute pathogen#infect()

" Window size
set columns=80
set lines=40

" Basic usability
set backspace=2
syntax on
filetype indent on
set autoindent
set number
colorscheme desert
set nobackup
colors desert
set nocompatible

" Better search
set smartcase
set hlsearch
set incsearch
nnoremap <Esc> :noh<CR>

" 4-width TAB characters
set tabstop=4
set shiftwidth=4
set softtabstop=4

" Safe undo
let &backupdir=s:vimstuff.'/backup//'
let &directory=s:vimstuff.'/swap//'
let &undodir=s:vimstuff.'/undo//'

" Key mappings
nnoremap gj J
nnoremap K {
nnoremap J }
vnoremap gj J
vnoremap K {
vnoremap J }
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap Y y$

" Tab handling
nnoremap <C-tab> :tabnext<CR>
nnoremap <C-S-tab> :tabprev<CR>
nnoremap <C-t> :tabnew<CR>

" Command mappings
command! Rc :so ~/.vimrc
command! W w
command! Q q
command! Wq wq
command! WQ wq
command! VS set hlsearch | set incsearch | noh
command! NS set nohlsearch | set noincsearch

" File encoding
set enc=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf8,prc

