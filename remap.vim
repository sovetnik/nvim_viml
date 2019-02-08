" -----------------------------------------------------
" 1 Setting leader {{{
" -----------------------------------------------------
let g:mapleader=","
"}}}

" -----------------------------------------------------
" 1.1 Setting Navigation {{{
" -----------------------------------------------------
"  Netrw
nmap <silent> <leader><leader> :Explore<CR>

"  Nerdtree
fun! ToggleNERDTreeWithRefresh()
  if(exists('t:NERDTreeBufName') && bufwinnr(t:NERDTreeBufName) != -1)
    :NERDTreeClose
  else
    :NERDTreeFind
  endif   
  if(exists('t:NERDTreeBufName') && bufwinnr(t:NERDTreeBufName) != -1)
    call feedkeys("R")  
  endif   
endf 
nmap <silent> <Leader>n :call ToggleNERDTreeWithRefresh()<cr> 
nmap <silent> <Leader>N :NERDTreeToggle <cr> 

" CtrlPMRUFiles
nmap <silent> <leader>m :CtrlPMRUFiles<CR>
" Buffergator
nmap <silent> <leader>b :BuffergatorToggle<CR>
"}}}

" -----------------------------------------------------
" 1.2  Asynchronous Lint Engine settings {{{
" -----------------------------------------------------
"  ALE autofix (only for rubocop autocorrect)
nmap <silent> <leader>f :ALEFix<CR>
"}}}

" -----------------------------------------------------
" 1.3 Rails Mappings {{{
" -----------------------------------------------------
"  Alternate vertical
nmap <silent> gi :AV<CR>
"  Alternate gorizontal
nmap <silent> gj :AS<CR>
"  Related vertical
nmap <silent> go :RV<CR>
"  Related gorizontal
nmap <silent> gk :RS<CR>
"  Find vertical
nmap <silent> gy :vsplit<CR>gf
"  Find gorizontal
nmap <silent> gh :split<CR>gf
"}}}

" -----------------------------------------------------
" 1.4 FuGITive Mappings {{{
" -----------------------------------------------------
" Git status in buffer
nmap <silent> gs :Gstatus<CR>
" Git versions of file (history of changes)
nmap <silent> gv :Gitv!<CR>
" Show what revision and author last modified each line of a file
nmap <silent> gb :Gblame<CR>
"}}}

" -----------------------------------------------------
" 1.5 Dash Mappings {{{
" -----------------------------------------------------
nmap <silent> <leader>d <Plug>DashSearch

" -----------------------------------------------------
" 1.6 Multitran Mappings {{{
" -----------------------------------------------------
nmap <silent> ?? :te translate <cword><CR><CR>

" -----------------------------------------------------
" 1.7 Ag Actions {{{
" -----------------------------------------------------
" use * to search current word in normal mode
nmap * <Plug>AgActionWord
" use * to search selected text in visual mode
vmap * <Plug>AgActionVisual

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
" map ESC to exit terminal mode
tnoremap <Esc> <C-\><C-n>

" Easier window navigation
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

" Exit from Insert mode (additional esc)
imap jk <Esc>

" Close quickfix menu
nnoremap <Leader>c :cclose<CR>

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

" Quick write buffer
nnoremap <leader>w :w<CR>

" Quick quit buffer
nnoremap <leader>q :q<CR>

" Re-edit file from buffer
nnoremap <leader>e :e %<CR>

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

