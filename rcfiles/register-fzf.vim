"======================================================
" Register-fzf
"======================================================
function! s:register_list()
  " capture register output
  redir => registers_out
  silent registers
  redir END

  " put into List
  let register_lines = split(registers_out, '\n')

  " remove header: '--- Registers ---'
  call remove(register_lines, 0)
  return register_lines 
endfunction

function! s:register_value(lines)
  return eval("@".matchstr(join(a:lines), '.', 1))
endfunction

function! s:register_insert(e)
  execute 'normal '.matchstr(a:e, '^".').'p '
endfunction

" inoremap <expr> <c-r><c-r><c-r> fzf#complete({
"       \   'source':  <sid>register_list(),
"       \   'reducer':  function('<sid>register_value'),
"       \   'options': '+m',
"       \   'down':    len(<sid>register_list()) + 2
"       \ })

" let options =  '+m --preview="echo {} | node -e \"var readline = require(\"readline\"); var rl = readline.createInterface({ input: process.stdin, output: process.stdout, terminal: false }); rl.on(\"line\", function(line){ console.log(line); }) \""'
let options = '+m'
nnoremap <silent> "<c-r> :call fzf#run({
      \   'source':  <sid>register_list(),
      \   'sink':    function('<sid>register_insert'),
      \   'options': options,
      \   'down':    len(<sid>register_list()) + 2,
      \ })<CR>
