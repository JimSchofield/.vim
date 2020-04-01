"======================================================
" Convenience
"======================================================
map <f6> :NERDTreeToggle<cr>
nnoremap <leader>vim :tabe ~/.dot/.vim/<CR>
nnoremap <leader>s :source ~/.vimrc<CR>
nnoremap <leader>w :w<CR>
nnoremap <leader>b :Buffers<CR>
nnoremap <leader>r :Rg<CR>
nnoremap <leader>gs :Gstatus<CR>
nnoremap <leader>gc :Gcommit<CR>
nnoremap <leader>tab :IndentLinesToggle<CR>
nnoremap <leader>tc :call ToggleConceal()<CR>

" Use COC go to def
nmap <silent> <leader>gd :call CocAction('jumpDefinition', 'tab drop')<CR>

" Key binding to toggle tabs
:nnoremap <leader>tt :call ToggleTabs()<cr>

" Kill all other buffers
command! BufOnly silent! execute "%bd|e#|bd#"
