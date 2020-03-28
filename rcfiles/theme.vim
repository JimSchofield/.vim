"===========================================================
" Theme
"===========================================================

colorscheme new-moon
" colorscheme challenger_deep

" set background to be transparent
hi normal guibg=NONE ctermbg=NONE

" Set explicit visual selection colors
hi Visual guibg=#334455 gui=none

" Fix diff text color
hi DiffDelete gui=none guifg=#000000 guibg=#f2777a 
hi DiffAdd gui=none guifg=#000000 guibg=#92d192 
hi DiffChange gui=none guifg=#000000 guibg=#ffd479 
hi DiffText gui=none guifg=#000000 guibg=#62cfcf 

set termguicolors 


