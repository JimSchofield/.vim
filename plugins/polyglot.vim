"======================================================
" Polyglot
"======================================================
Plug 'sheerun/vim-polyglot'


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
