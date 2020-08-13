"======================================================
" Journaling:
" These are some configs to make journaling in vim
" 'natural'
"======================================================

" Insert date 
nnoremap <leader>date :put =strftime('%Y-%m-%d (%a)')<CR>kJ
" 2020-08-13 (Thu)

" Insert date and time
nnoremap <leader>dt :put =strftime('%Y-%m-%d (%a) - %X')<CR>kJ
" 2020-08-13 (Thu) - 03:33:46 PM

function! Journal() 
    normal \date<cr>
    read ~/.dot/.vim/templates/journal.skeleton
    normal jji
endfun
nnoremap <leader>j :call Journal()<cr>

