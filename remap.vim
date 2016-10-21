" -----------------------------------------------------
" 1 Setting leader {{{
" -----------------------------------------------------
let g:mapleader=","
"}}}

" -----------------------------------------------------
" 2 Disabling arrow keys, space key, exmode enter {{{
" with Q key, help with F1, etc.
" -----------------------------------------------------
nnoremap <up> <NOP>
nnoremap <down> <NOP>
nnoremap <left> <NOP>
nnoremap <right> <NOP>
nnoremap <delete> <NOP>
nnoremap <Space> <NOP>
inoremap <F1> <NOP>
nnoremap <F1> <NOP>
nnoremap Q <NOP>
"}}}

" -----------------------------------------------------
" 3 Vim defaults overriding {{{
" -----------------------------------------------------
" Easier window navigation
" since CTRL-h is Backspase in iTerm2, remap it
nmap <BS> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

" Open vertical split
nnoremap <Leader>v <C-w>v

" More logical Y (default was alias for yy)
nnoremap Y y$

" Don't yank to default register when changing something
nnoremap c "xc
xnoremap c "xc

" Fix the cw at the end of line bug default vim has special treatment (:help cw)
nmap cw ce
nmap dw de

" Uppercase word in insert mode
inoremap <C-u> <ESC>mzgUiw`za

" Don't cancel visual select when shifting
xnoremap <  <gv
xnoremap >  >gv

" Quick save buffer
nnoremap <leader>w :w<CR>

" Keep the cursor in place while joining lines
nnoremap J mzJ`z

" [S]plit line (sister to [J]oin lines) S is covered by cc.
nnoremap S mzi<CR><ESC>`z

" Start search on current word under the cursor
nnoremap <leader>/ /<CR>

" Start reverse search on current word under the cursor
nnoremap <leader>? ?<CR>

" Remove highlight after find
nmap <silent> // :nohlsearch<CR>
" }}}

