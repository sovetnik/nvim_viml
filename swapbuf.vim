" Taken here:
" https://vi.stackexchange.com/a/3750

function! WinBufSwap()
  let thiswin = winnr()
  let thisbuf = bufnr("%")
  let lastwin = winnr("#")
  let lastbuf = winbufnr(lastwin)

  exec  lastwin . " wincmd w" ."|".
      \ "buffer ". thisbuf ."|".
      \ thiswin ." wincmd w" ."|".
      \ "buffer ". lastbuf
endfunction

command! Wswap :call WinBufSwap()

map <Leader>z <C-c>:call WinBufSwap()<CR>
