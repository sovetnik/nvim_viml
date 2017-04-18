" -----------------------------------------------------
" Common Mappings {{{
" -----------------------------------------------------
"  Nerdtree
nmap <silent> <leader>n :NERDTreeToggle<CR>
" Merginal
nmap <silent> <leader>m :MerginalToggle<CR>
" Buffergator
nmap <silent> <leader>b :BuffergatorToggle<CR>
"}}}

" -----------------------------------------------------
" Rails Mappings {{{
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
" FuGITive Mappings {{{
" -----------------------------------------------------
" Git status in buffer
nmap <silent> gs :Gstatus<CR>
" Git versions of file (history of changes)
nmap <silent> gv :Gitv!<CR>
"}}}

" -----------------------------------------------------
" RuboCop Mappings {{{
" -----------------------------------------------------
let g:vimrubocop_keymap = 0
nmap <silent> <leader>a :RuboCop -a<CR>
"}}}

" -----------------------------------------------------
" Buffergator settings {{{
" -----------------------------------------------------
let g:buffergator_sort_regime = "mru"
let g:buffergator_viewport_split_policy = "B"
let g:buffergator_autoupdate = 1
let g:buffergator_show_full_directory_path = 0
let g:buffergator_suppress_keymaps = 1
nnoremap <silent> <Leader>b :BuffergatorToggle<CR>
"}}}

" -----------------------------------------------------
" Neomake settings {{{
" -----------------------------------------------------
let g:neomake_verbose=0
let g:neomake_warning_sign = {
      \ 'text': '❯',
      \ 'texthl': 'WarningMsg',
      \ }
let g:neomake_error_sign = {
      \ 'text': '',
      \ 'texthl': 'ErrorMsg',
      \ }
"}}}

" -----------------------------------------------------
" Deoplete autocomplete settings {{{
" -----------------------------------------------------
let g:deoplete#enable_at_startup=1
let g:deoplete#enable_refresh_always=0
let g:deoplete#file#enable_buffer_path=1
let g:deoplete#sources={}
let g:deoplete#sources._    = ['buffer', 'file', 'ultisnips']
let g:deoplete#sources.ruby = ['buffer', 'member', 'file', 'ultisnips']
let g:deoplete#sources.vim  = ['buffer', 'member', 'file', 'ultisnips']
" }}}
