"======================================================
" Language support 
"======================================================

Plug 'itchyny/lightline.vim'

let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified', 'linter_errors', 'linter_warnings', 'linter_checking'] ],
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead',
      \ },
      \ 'component_expand': {
      \   'linter_errors': 'GetAleErrors',
      \   'linter_warnings': 'GetAleWarnings',
      \   'linter_checking': 'AleChecking',
      \ }
      \ }

" :h ale#statusline#Count
" https://github.com/maximbaz/lightline-ale/blob/master/autoload/lightline/ale.vim

function! GetAleErrors()
  let l:counts = ale#statusline#Count(bufnr(''))
  let l:all_errors = l:counts.error + l:counts.style_error
  return l:all_errors == 0 ? '' : printf('💥' . '%d', all_errors)
endfunction

function! GetAleWarnings()
  let l:counts = ale#statusline#Count(bufnr(''))
  let l:all_warnings = l:counts.warning + l:counts.style_warning
  return l:all_warnings == 0 ? '' : printf('⚠️ ' . '%d', all_warnings)
endfunction

function! AleChecking()
  return ale#engine#IsCheckingBuffer(bufnr('')) ? '🤔' : '🌊'
endfunction

augroup lightline#ale
  autocmd!
  autocmd User ALEJobStarted call lightline#update()
  autocmd User ALELintPost call lightline#update()
  autocmd User ALEFixPost call lightline#update()
augroup END
