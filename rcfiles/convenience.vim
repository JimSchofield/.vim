"======================================================
" Convenience
"======================================================
map <f6> :NERDTreeToggle<cr>
nnoremap <leader>vim :tabe ~/.vimrc<CR>
nnoremap <leader>s :source ~/.vimrc<CR>
nnoremap <leader>w :w<CR>
nnoremap <leader>b :Buffers<CR>
nnoremap <leader>r :Rg<CR>
nnoremap <leader>gs :Gstatus<CR>
nnoremap <leader>gc :Gcommit<CR>
nnoremap <leader>tab :IndentLinesToggle<CR>

" Use COC go to def
nmap <silent> <leader>gd <Plug>(coc-definition)

" Key binding to toggle tabs
:nnoremap <leader>tt :call ToggleTabs()<cr>
