"======================================================
" Editing
"======================================================

" Moving lines with ^-j/k
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==
inoremap <C-j> <Esc>:m .+1<CR>==gi
inoremap <C-k> <Esc>:m .-2<CR>==gi
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv

" " delete without yanking
" nnoremap <leader>d "_d
" vnoremap <leader>d "_d
" " replace currently selected text with default register
" " without yanking it
" vnoremap <leader>p "_dP
