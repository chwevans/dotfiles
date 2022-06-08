"======================================================================
" Settings
"======================================================================
syntax on
filetype plugin indent on

set expandtab
set autoindent
set smarttab
set smartindent
set hlsearch

" Allow backspaces in insert mode
set backspace=indent,eol,start

" I have git for this.
set nobackup
set noswapfile

set wildignore+=*.swp,*.back,*.pyc,*.class,*.beam

" don't beep
set visualbell
set noerrorbells

" don't flash
set t_vb=

" first complete to max, then show a list
set wildmode=longest,list,full

"======================================================================
" Commands
"======================================================================
command! Clean execute "%s/\\s\\+$//g"

" sudo writing a file within vim -- courtesy of jimmyngo
command W w !sudo tee % > /dev/null

" ===================================================================
" Key Mappings
" ===================================================================

" Toggle highlighting
noremap <F5> :set hlsearch!<CR>
" Clear search
noremap <c-h> :let @/=""<CR>

" jj pulls you out of insert mode
inoremap jj <ESC>

" Ctrl-j/k movesd panes
inoremap <c-j> <ESC><c-w>j<c-w>_i
noremap <c-j> <c-w>j<c-w>_

inoremap <c-k> <ESC><c-w>k<c-w>_i
noremap <c-k> <c-w>k<c-w>_

" Ctrl-o equals panes
inoremap <c-o> <ESC><c-w>=i
noremap <c-o> <c-w>=

" Big u redoes
nmap <U> :redo<CR>

"Remove all trailing whitespace by pressing Ctrl-w
nnoremap <c-q> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>

inoremap <c-e> <ESC>:q<CR>
nnoremap <c-e> :q<CR>

"======================================================================
" Appearance
"======================================================================

" Visual indicator of more than 80 columns changed to red
highlight ColorColumn ctermbg=red
highlight ColorColumn guibg=red

" Visual indicator of extraneous whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/


"======================================================================
" TODO Filetype settings to move
"======================================================================

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

