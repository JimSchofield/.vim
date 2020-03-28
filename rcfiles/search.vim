"======================================================
" Search and Replace settings
"======================================================

" Search options
set incsearch
set ignorecase
set smartcase

"clear search
nnoremap <leader>cs :noh<CR>

" Search for selected
vnoremap <leader>/ y/<C-R>=escape(@",'/\')<CR><CR>

" Google search under cursor
" Requires google to be aliased to shell script that searches
vmap <leader>G "ay :!google <C-r>a<CR>
