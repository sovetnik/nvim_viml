" -----------------------------------------------------
" Common Settings {{{
" -----------------------------------------------------
"  Netrw
let g:netrw_altv          = 1
let g:netrw_dirhistmax   = 100
let g:netrw_fastbrowse    = 3
let g:netrw_keepdir       = 0
let g:netrw_liststyle     = 3
let g:netrw_special_syntax= 1

" Nerdtree
" enable line numbers
let NERDTreeShowLineNumbers=1
let NERDTreeShowBookmarks=1
let NERDTreeQuitOnOpen = 1
" let NERDTreeWinSize = 33
" let NERDTreeWinPos = 'right'
" make sure relative line numbers are used
autocmd FileType nerdtree setlocal relativenumber
"}}}

" -----------------------------------------------------
"  Asynchronous Lint Engine settings {{{
" -----------------------------------------------------
let g:ale_fixers = {
      \   'ruby': [
      \       'rubocop',
      \       'remove_trailing_lines',
      \   ],
      \}
let g:ale_sign_error = '❯❯'
let g:ale_sign_warning = '❯'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
"}}}

" -----------------------------------------------------
" Buffergator settings {{{
" -----------------------------------------------------
let g:buffergator_sort_regime = 'mru'
let g:buffergator_viewport_split_policy = 'B'
let g:buffergator_autoupdate = 1
let g:buffergator_show_full_directory_path = 0
let g:buffergator_suppress_keymaps = 1
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
