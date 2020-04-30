"======================================================
" Appearance
"======================================================

syntax on
set wrap!
set scrolloff=20
set sidescrolloff=20

" show key presses
set showcmd

" set line number
set nu rnu

"====== Tabs ======
filetype plugin indent on
" show existing with width
set tabstop=4
" when indenting with >
set shiftwidth=4
" on pressing tab
set expandtab
" set noexpandtab

" command to switch between...
command! -nargs=1 ChangeTabs :set shiftwidth=<args> tabstop=<args> expandtab

" toggle tabs between 2 and 4
function! ToggleTabs()
    if &shiftwidth == '2'
        ChangeTabs 4
        :echom "Tabs are set to 4 spaces"
    else
        ChangeTabs 2
        :echom "Tabs are set to 2 spaces"
    endif
endfunction

