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

" 4-width TAB characters
set tabstop=4
set shiftwidth=4
set softtabstop=4

" Safe undo
set backupdir=W:/vimstuff/backup//
set directory=W:/vimstuff/swap//
set undodir=W:/vimstuff/undo//

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

