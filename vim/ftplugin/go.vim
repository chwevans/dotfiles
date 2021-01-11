" Golang
setlocal tabstop=2
setlocal softtabstop=2
setlocal shiftwidth=2
set nu

nnoremap <c-b> :GoBuild<CR>
inoremap <c-b> <ESC>:GoBuild<CR>
nnoremap <c-n> :GoRun<CR>
inoremap <c-n> <ESC>:GoRun<CR>

inoremap <c-d> <ESC>:GoDoc<CR>
nnoremap <c-d> :GoDoc<CR>
