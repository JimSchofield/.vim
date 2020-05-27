"======================================================
" Convenience
"======================================================
map <f6> :NERDTreeToggle<cr>
nnoremap <leader>nf :NERDTreeFind<CR>
nnoremap <leader>vim :tabe ~/.dot/.vim/<CR>
nnoremap <leader>s :source ~/.vimrc<CR>
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>b :Buffers<CR>
nnoremap <leader>r :Rg<CR>

" Fugitive
nnoremap <leader>gs :Gstatus<CR>
nnoremap <leader>gc :Gcommit<CR>
nnoremap <leader>gca :Gcommit --amend<CR>

" Indent lines
nnoremap <leader>tab :IndentLinesToggle<CR>
nnoremap <leader>tc :call ToggleConceal()<CR>

" Key binding to toggle tab widths
:nnoremap <leader>tt :call ToggleTabs()<cr>

" Use COC go to def
nmap <silent> <leader>gd :call CocAction('jumpDefinition', 'tab drop')<CR>

" COC
nnoremap <leader>coc :CocAction<CR>

" Navigate tabs
nnoremap <Tab> :tabnext<CR>
nnoremap <S-Tab> :tabprevious<CR>
nnoremap <C-t> :tabnew<CR>

" Color highlighting and debugging
nnoremap <leader>ch :ColorToggle<CR>
nnoremap <leader>testc :so $VIMRUNTIME/syntax/hitest.vim<CR>

" Add inner spaces in imports
" TODO: include in jsx file?
command! AddSpacesInImports :%s/import \(.*\){\([a-z].*[a-z]\)}/import \1{ \2 }/g 

" Run scripts in various runtimes 
nnoremap <F7> :!ruby %<CR>
nnoremap <leader>io :!Io %<CR>
