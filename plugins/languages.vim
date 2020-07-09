"======================================================
" Language support 
"======================================================

Plug 'pangloss/vim-javascript'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'cakebaker/scss-syntax.vim'
Plug 'posva/vim-vue'
Plug 'rust-lang/rust.vim'

Plug 'elixir-editors/vim-elixir'
Plug 'amiralies/coc-elixir', {'do': 'yarn install && yarn prepack'}
augroup filetypedetect
    au BufRead,BufNewFile *.ex set filetype=elixir
augroup END

Plug 'elzr/vim-json'
let g:vim_json_syntax_conceal = 0
