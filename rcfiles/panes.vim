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

" " Close relative windows
" nnoremap <C-x>j :winc j<CR> :q<CR>
" nnoremap <C-x>h :winc h<CR> :q<CR>
" nnoremap <C-x>k :winc k<CR> :q<CR>
" nnoremap <C-x>l :winc l<CR> :q<CR>

nnoremap <nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
nnoremap <nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
inoremap <nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
inoremap <nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
