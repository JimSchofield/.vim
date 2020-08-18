"======================================================
" Panes and windows
"======================================================

" Navigate tabs
" nnoremap <C-t> :tabnew<CR>
" nnoremap <silent> <C-n> :tabnext<CR>
" nnoremap <silent> <C-p> :tabprevious<CR>
" NOTE: Since <Tab> is identical to <C-i>, need to be careful
" about using tab.  I've opted to use gt or {i}gt to see
" how that feels
nnoremap <leader>tq :tabclose<CR>

" Close relative windows
nnoremap <C-x>j :winc j<CR> :q<CR>
nnoremap <C-x>h :winc h<CR> :q<CR>
nnoremap <C-x>k :winc k<CR> :q<CR>
nnoremap <C-x>l :winc l<CR> :q<CR>


