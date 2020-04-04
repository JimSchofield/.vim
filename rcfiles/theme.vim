"===========================================================
" Theme
"===========================================================
set termguicolors 

colorscheme new-moon
" colorscheme challenger_deep

" Set color variables from new-moon
let s:black = [ '#2d2d2d' ]
" let s:warmgray = [ '#5f5f5f', 59 ]
" let s:jade =      [ '#94C7B5', 115 ]
let s:darkblue =  [ '#63A1C2', 73  ]
let s:aqua =      [ '#8ADDF4', 117 ]
let s:orangered = [ '#FF9B62', 215 ]
let s:lightblue = [ '#8FBBD2', 110 ]
let s:moccasin =  [ '#ffeead', 229 ]
let s:beige =     [ '#cda869', 179 ]
let s:plum3 =     [ '#d787d7', 176 ]
let s:maize =     [ '#e3c485', 186 ]
" let s:palerose =  [ '#F4E1E1', 224 ]
let s:lightcoral =    [ '#ff8787', 210 ]
let s:emerald =   [ '#49C698', 78  ]

" set background to be transparent
hi normal guibg=NONE ctermbg=NONE

" Set explicit visual selection colors
hi Visual guibg=#334455 gui=none

" Fix diff text color
hi DiffDelete gui=none guifg=#000000 guibg=#f2777a 
hi DiffAdd gui=none guifg=#000000 guibg=#92d192 
hi DiffChange gui=none guifg=#000000 guibg=#ffd479 
hi DiffText gui=none guifg=#000000 guibg=#62cfcf 

" Change highlight colors
hi Search guibg=lightblue guifg=#2d2d2d

" Change bracket highlighting
:hi MatchParen guibg=plum3 guifg=#2d2d2d

" Pmenu
" hi Pmenu guibg=grey11
hi Pmenu guibg=#2d2d2d

" TODO: re-do colors for new-moon?
