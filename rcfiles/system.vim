"===========================================================
" Settings that control:
" system settings
" files
"===========================================================

" Set default place for swp files so they
" don't pollute the working directory
set directory^=$HOME/.vim/tmp/

" Kill all other buffers
command! BufOnly silent! execute "%bd|e#|bd#"

"====== Diff view ======
" Convenient command to see the difference between the current buffer and the
" file it was loaded from, thus the changes you made.
if !exists(":DiffOrig")
  command DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis
          \ | wincmd p | diffthis
endif

