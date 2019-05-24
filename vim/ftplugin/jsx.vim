"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vim ftplugin file
"
" Language: JSX (JavaScript)
" Maintainer: Max Wang <mxawng@gmail.com>
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
setlocal tabstop=2
setlocal softtabstop=2
setlocal shiftwidth=2
setlocal expandtab
setlocal nu

" modified from html.vim
if exists("loaded_matchit")
  let b:match_ignorecase = 0
  let s:jsx_match_words = '(:),\[:\],{:},<:>,' .
        \ '<\@<=\([^/][^ \t>]*\)[^>]*\%(/\@<!>\|$\):<\@<=/\1>'
  let b:match_words = exists('b:match_words')
    \ ? b:match_words . ',' . s:jsx_match_words
    \ : s:jsx_match_words
endif

setlocal suffixesadd+=.jsx
