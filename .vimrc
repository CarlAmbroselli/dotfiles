" Don't try to be vi compatible
set nocompatible

" Turn on syntax highlighting
syntax on

" Enable global undo
set undofile
set undodir=~/.vim/undodir

" Blink cursor on error instead of beeping (grr)
set visualbell
set vb t_vb=

" Encoding
set encoding=utf-8

" Rendering
set ttyfast

" Last line
set showmode
set showcmd
set ruler " display cursor position in last line

" Searching
nnoremap / /\v
vnoremap / /\v
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch
map <leader><space> :let @/=''<cr> " clear search

" Tabs
map <Leader>t :tabnew<CR>
map <Leader>[ :tabprevious<CR>
map <Leader>] :tabnext<CR>

" Markdown
map <Leader>md :set syntax=markdown<CR>

" No banner for file listing
let g:netrw_banner = 0

