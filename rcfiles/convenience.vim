"======================================================
" Convenience
"======================================================
nnoremap <leader>nf :NERDTreeFind<CR>
nnoremap <leader>vim :tabe ~/.config/myvimrc/<CR>
nnoremap <leader>s :source ~/.vimrc<CR>
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>x :x<CR>
nnoremap <leader>b :Buffers<CR>
nnoremap <leader>rg :Rg<CR>
nnoremap <leader>rr :Ranger<CR>
nnoremap <leader>h :History<CR>
nnoremap <leader>tw :set wrap!<CR>
nnoremap <leader>p :Prettier<CR>

nnoremap <leader>path :echo expand("%:p")<CR>

"Snippets
nnoremap <leader>snip :e ~/.config/coc/ultisnips/<CR>

"ALE
nnoremap <leader>a :ALEFix<CR>
nnoremap <leader>] :ALENextWrap<CR>

" Fugitive
nnoremap <leader>gs :Gstatus<CR>
nnoremap <leader>gc :Git commit<CR>
nnoremap <leader>gca :Git commit --amend<CR>

" Indent lines
nnoremap <leader>tab :IndentLinesToggle<CR>
nnoremap <leader>tc :call ToggleConceal()<CR>

" replace quotes
vnoremap <leader>' :s/"/'/g<CR>
vnoremap <leader>" :s/'/"/g<CR>

" Key binding to toggle tab widths
:nnoremap <leader>tt :call ToggleTabs()<cr>

" COC
nmap <silent> <leader>gd :call CocAction('jumpDefinition', 'tab drop')<CR>
nnoremap <leader>` :CocAction<CR>
nmap <silent> gr <Plug>(coc-references)
nmap <leader>sr <Plug>(coc-rename)


" Color highlighting and debugging
nnoremap <leader>ch :ColorToggle<CR>
" nnoremap <leader>testc :so $VIMRUNTIME/syntax/hitest.vim<CR>

" Add inner spaces in imports
command! AddSpacesInImports :%s/import \(.*\){\([a-z].*[a-z]\)}/import \1{ \2 }/g 

" Run scripts in various runtimes 
" nnoremap <F7> :!ruby %<CR>
" nnoremap <F7> :!clojure %<CR>
" nnoremap <F7> :!elixir %<CR>
" nnoremap <F8> :!npm run build<CR>
