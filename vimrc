set nocompatible
set ignorecase
set smartcase
set scrolloff=3
set wildmode=list:longest
set hidden
nnoremap ' `
nnoremap ` '
let maplead = "<SPACE>"
set history=100
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set ruler
syntax on
filetype on
filetype plugin on
filetype indent on
set backspace=indent,eol,start
set hlsearch
set incsearch
set visualbell
set nu!

" Go stuff
filetype off
filetype plugin indent off
set runtimepath+=~/.vim/.govim/misc/vim
filetype plugin indent on
syntax on
filetype on
au FileType go compiler go

map <C-f> :Fmt<cr>
map <C-m> :make<cr>

" Commands
" sudo writing a file within vim -- courtesy of jimmyngo
command W w !sudo tee % > /dev/null

nmap <U> :redo

" Window management stuff
map <C-j> <C-W>j<C-W>_
map <C-k> <C-W>k<C-W>_
" The tabs can also be controlled with :tabn and :tabp
map <C-l> gt
map <C-h> gT

" Insert mode mappings
imap <C-j> <esc><C-W>j<C-W>_a
imap <C-k> <esc><C-W>k<C-W>_a
imap <C-l> <esc>gta
imap <C-h> <esc>gTa

" Highlight search toggling -- courtesy of jimmyngo
map <F5> :set hlsearch!<CR>

" Golang coding conventions
au FileType go set tabstop=2 shiftwidth=2

" Ruby coding conventions
au FileType ruby set tabstop=2 expandtab shiftwidth=2

" Python coding conventions
au FileType python set tabstop=4 expandtab shiftwidth=4

" Erlang coding conventions
au FileType erlang set tabstop=2 expandtab shiftwidth=2

" HTML Coding
au FileType html set expandtab matchpairs+=<:> tabstop=4 shiftwidth=4

" HTML Django stuff
au FileType htmldjango set expandtab matchpairs+=<:> tabstop=4 shiftwidth=4

" CSS files
au FileType css set expandtab tabstop=4 shiftwidth=4

" CFG files
au FileType cfg set expandtab tabstop=4 shiftwidth=4

" JSON files
au! BufRead,BufNewFile *.json set filetype=json autoindent formatoptions=tcq2l textwidth=78 shiftwidth=2 softtabstop=2 tabstop=8 expandtab foldmethod=syntax

