"======================================================
" Markdown-related plugins
"======================================================

" Markdown syntax
Plug 'plasticboy/vim-markdown'

" Distraction-free editing
Plug 'junegunn/goyo.vim'
 
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
