" Note specific settings
setlocal tabstop=2
setlocal softtabstop=2
setlocal shiftwidth=2
setlocal expandtab
setlocal autoindent
setlocal tw=120
setlocal wrap linebreak nolist

setlocal formatoptions=tq
setlocal foldmethod=indent
"setlocal foldmethod=expr
"setlocal foldexpr=(getline(v:lnum)=~'^$')?-1:((indent(v:lnum)<indent(v:lnum+1))?('>'.indent(v:lnum+1)):indent(v:lnum))
"set foldtext=getline(v:foldstart)
"set fillchars=fold:\ "(there's a space after that \)
highlight Folded ctermfg=DarkGreen ctermbg=Black

syn match   myTodo   contained   "\<\(TODO\|FIXME\):"
hi def link myTodo Todo
syn match   myTodo2   contained   "\<\(TODO\|FIXME\)"
hi def link myTodo2 Todo
