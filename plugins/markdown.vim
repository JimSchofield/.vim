"======================================================
" Markdown-related plugins
"======================================================

" Markdown syntax
Plug 'plasticboy/vim-markdown'
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_conceal = 0
let g:vim_markdown_conceal_code_blocks = 0

" Distraction-free editing
Plug 'junegunn/goyo.vim'

nnoremap <leader>go :Goyo<CR>
autocmd! User GoyoEnter set wrap
autocmd! User GoyoEnter set wrap!
 
" " Limelight
" " I have yet to vet this...
" Plug 'junegunn/limelight.vim'
" " Use limeline when using goyo
" autocmd! User GoyoEnter Limelight
" autocmd! User GoyoLeave Limelight!

" Toggle conceal
" Used mostly in md files
" mapped in ../rcfiles/convenience.vim
function! ToggleConceal()
  if &conceallevel == '2'
    set conceallevel=0
    :echom "Conceal level changed to none"
  else
    set conceallevel=2
    :echom "Conceal level turned on"
  endif
endfunc
