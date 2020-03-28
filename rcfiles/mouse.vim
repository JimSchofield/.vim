"======================================================
" Appearance
"======================================================

function! ToggleMouse()
  if &mouse == 'a'
    set mouse=
    :echom "Mouse turned off"
  else
    set mouse=a
    :echom "Mouse turned on"
  endif
endfunc

nnoremap <leader>m :call ToggleMouse()<CR>
