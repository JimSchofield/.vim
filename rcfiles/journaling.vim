"======================================================
" Journaling:
" These are some configs to make journaling in vim
" 'natural'
"
" The following is in my zsh:
" journal='nvim $(date -v-1d "+%d-%m-%Y").md' 
"======================================================

" Insert date 
nnoremap <leader>date :put =strftime('%Y-%m-%d (%a)')<CR>kJ
" 2020-08-13 (Thu)

" Insert date and time
nnoremap <leader>dt :put =strftime('%Y-%m-%d (%a) - %X')<CR>kJ
" 2020-08-13 (Thu) - 03:33:46 PM

function! Journal() 
    if (filereadable(expand('%:p')) == 0)
        normal i#
        normal \date<cr>
        read ~/.config/myvimrc/templates/journal.skeleton
        normal jji
    endif
    execute 'Goyo'
endfun
" nnoremap <leader>j :call Journal()<cr>

augroup journal
    autocmd!
    autocmd VimEnter */journal/** :call Journal()
augroup END
