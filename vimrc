" Language
language English_United States

" Basic usability
set backspace=2
syntax on
filetype on
filetype indent on
filetype plugin on
set autoindent
set number
colorscheme desert
set nobackup
colors desert
set nocompatible
set ruler
set hidden
set history=128
set autoread

" Better search
set ignorecase
set smartcase
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
nnoremap Q @q
nnoremap ; :
nnoremap : ;
vnoremap ; :
vnoremap : ;
nnoremap <C-c> "+y
nnoremap <C-v> "+p
vnoremap <C-c> "+y
vnoremap <C-v> "+p
inoremap <C-v> <C-r>+

" Tab handling
nnoremap <C-tab> :tabnext<CR>
nnoremap <C-S-tab> :tabprev<CR>

" Jumping to correction window
nnoremap <F3> :cnext<CR>zz
nnoremap <F4> :cprev<CR>zz

" Command mappings
command! Rc :so $MYVIMRC
command! W w
command! Q q
command! Wq wq
command! WQ wq
command! VS set hlsearch | set incsearch | noh
command! NS set nohlsearch | set noincsearch
command! Exp !start explorer /select,%:p

" File encoding
set enc=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf8,prc

" Visible whitespace
set nolist
set listchars=trail:.,tab:>-

" Better wildmenu
set wildmenu
set wildmode=longest:full,full

" ctags navigation
nnoremap å <C-]>
nnoremap Å <C-t>

" Filetypes
autocmd FileType ruby setlocal
    \ shiftwidth=2 tabstop=2 softtabstop=2 expandtab
autocmd FileType eruby setlocal
    \ shiftwidth=2 tabstop=2 softtabstop=2 expandtab

" GUI
if has("gui_running")
    set guifont=Consolas:h10

    set guioptions-=m
    set guioptions-=T
    set guioptions-=r
    set guioptions-=L

    set langmenu=en_US
    let $LANG = 'en_US'
    source $VIMRUNTIME/delmenu.vim
    source $VIMRUNTIME/menu.vim
end

