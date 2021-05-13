"======================================================
" Language support 
"======================================================

Plug 'pangloss/vim-javascript'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'cakebaker/scss-syntax.vim'
Plug 'posva/vim-vue'
Plug 'rust-lang/rust.vim'
Plug 'cespare/vim-toml'
Plug 'joukevandermaas/vim-ember-hbs'
Plug 'elixir-editors/vim-elixir'
Plug 'neovimhaskell/haskell-vim'

augroup filetypedetect
    au BufRead,BufNewFile *.ex set filetype=elixir
augroup END

Plug 'elzr/vim-json'
let g:vim_json_syntax_conceal = 0
