" -----------------------------------------------------
" Nerdtree Mappings {{{
" -----------------------------------------------------
nmap <silent> <leader><leader> :NERDTreeToggle<CR>
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
"
" -----------------------------------------------------
" RuboCop Mappings {{{
" -----------------------------------------------------
nmap <silent> <leader>ra :RuboCop -a<CR>
"}}}

" -----------------------------------------------------
" Buffergator settings {{{
" -----------------------------------------------------
let g:buffergator_sort_regime = "mru"
let g:buffergator_viewport_split_policy = "B"
nmap <silent> <leader>b :BuffergatorToggle<CR>
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
