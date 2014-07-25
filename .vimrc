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

" Ctags
nmap <C-r> :TagbarToggle<CR>

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

map <f11> Go<cr><!--<cr># vim:ft=twiki<cr>--><esc>

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

" ZSH files
au FileType zsh set expandtab tabstop=4 shiftwidth=4

" Sending Mail
au FileType mail set fo=tcoqwan nu! spell spelllang=en_us textwidth=78 wrap 

" For svn/hg commit message -- courtesy of jimmyngo
au FileType svn set fo=tcoqwan spell spelllang=en_us textwidth=78 wrap
au FileType mercurial set fo=tcoqwan spell spelllang=en_us textwidth=78 wrap

" For TWiki, TWiki Folding, and HTML Syntax -- courtesy of jimmyngo
au FileType twiki set spell spelllang=en_us tabstop=3 shiftwidth=3 expandtab
let g:Twiki_FoldAtHeadings = 1
let g:Twiki_SouceHTMLSyntax = 1

au! BufRead,BufNewFile *.json set filetype=json autoindent formatoptions=tcq2l textwidth=78 shiftwidth=2 softtabstop=2 tabstop=8 expandtab foldmethod=syntax

" Insert ipsum lorem statements for filling html
inoreabbrev lorem Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.
