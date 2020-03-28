"======================================================
" Ale
"======================================================
Plug 'dense-analysis/ale'

" Important: need to have these command line programs installed
let g:ale_fixers = {
    \ 'javascript': ['eslint'],
    \ 'rust': ['rustfmt'],
    \ }

" set this variable to 1 to fix files when you save them.
let g:ale_fix_on_save = 1
