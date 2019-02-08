" -----------------------------------------------------
" Colorscheme settings {{{
" -----------------------------------------------------

" colorscheme railscasts
" set background=dark
colorscheme moonshine

hi Comment          ctermbg=NONE ctermfg=246 cterm=NONE
" }}}

" -----------------------------------------------------
" Signify settings {{{
" -----------------------------------------------------
let g:signify_sign_add               = '+'
let g:signify_sign_delete            = '-'
let g:signify_sign_delete_first_line = '^'
let g:signify_sign_change            = '~'
let g:signify_sign_changedelete      = g:signify_sign_change

" highlight lines in Sy and vimdiff etc.)
highlight DiffAdd           cterm=bold ctermbg=none ctermfg=119
highlight DiffDelete        cterm=bold ctermbg=none ctermfg=167
highlight DiffChange        cterm=bold ctermbg=none ctermfg=227

" highlight signs in Sy
highlight SignifySignAdd    cterm=bold ctermbg=none ctermfg=119
highlight SignifySignDelete cterm=bold ctermbg=none ctermfg=167
highlight SignifySignChange cterm=bold ctermbg=none ctermfg=227
" }}}

" -----------------------------------------------------
" 4.7 Lightline settings {{{
" -----------------------------------------------------
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'tab': {
      \   'active': [ 'filename' ],
      \   'inactive': [ 'filename' ]
      \ },
      \ 'active': {
      \   'left': [
      \             [ 'mode', 'paste' ],
      \             [ 'fugitive', 'readonly', 'filename', 'modified' ] 
      \           ],
      \   'right': [
      \               [ 'linter_checking', 
      \                 'linter_errors', 
      \                 'linter_warnings', 
      \                 'linter_ok' ],
      \               [ 'lineinfo' ],
      \               [ 'percent' ],
      \               [ 'filetype', 'fileencoding' ]
      \            ]
      \ },
      \ 'component': {
      \   'readonly': '%{&filetype=="help"?"HELP":&readonly?"RO":""}'
      \ },
      \ 'component_expand': {
      \  'linter_checking': 'lightline#ale#checking',
      \  'linter_warnings': 'lightline#ale#warnings',
      \  'linter_errors': 'lightline#ale#errors',
      \  'linter_ok': 'lightline#ale#ok',
      \ },
      \ 'component_function': {
      \   'mode': 'LightLineMode',
      \   'modified': 'LightLineModified',
      \   'filename': 'LightLineShortFilename',
      \   'filetype': 'LightLineFiletype',
      \   'fileformat': 'LightLineFileformat',
      \   'fileencoding': 'LightLineFileencoding',
      \   'fugitive': 'LightLineFugitive',
      \   'readonly': 'LightLineReadonly'
      \ },
      \ 'componenttype': {
      \     'linter_checking': 'left',
      \     'linter_warnings': 'warning',
      \     'linter_errors': 'error',
      \     'linter_ok': 'left',
      \ },
      \ 'component_visible_condition': {
      \   'readonly': '(&readonly)'
      \ },
      \ 'separator': { 'left': '', 'right': '' },
      \ 'subseparator': { 'left': '', 'right': '' }
      \ }

" let g:lightline#ale#indicator_checking = "\uf110"
let g:lightline#ale#indicator_checking = ''
let g:lightline#ale#indicator_warnings = "\uf071"
let g:lightline#ale#indicator_errors = "\uf05e"
let g:lightline#ale#indicator_ok = "\uf00c"

function! LightLineMode()
  if &filetype == "help"
    return "HELP"
  elseif &filetype =~ "NERD.*"
    return "NERD_Tree"
  endif
  return g:lightline#mode()
endfunction

" Mode function for Lightline statusline
function! LightLineMode() abort
  let l:fname = expand('%:t')
  return l:fname =~? 'NERD_tree' ? 'NT' :
        \ &filetype ==? 'unite' ? 'Unite' :
        \ winwidth(0) > 70 ? g:lightline#mode() : ''
endfunction

" File format function for Lightline statusline
function! LightLineFileformat() abort
  return winwidth(0) > 70 ? &fileformat : ''
endfunction

" Filetype function for Lightline statusline
function! LightLineFiletype() abort
  return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype : 'no ft') : ''
endfunction

" File encoding function for Lightline statusline
function! LightLineFileencoding() abort
  return winwidth(0) > 70 ? (strlen(&fileencoding) ? &fileencoding : &encoding) : ''
endfunction

" File name function for Lightline statusline
function! g:LightLineFilename() abort
  let l:fname = expand('%:t')
  return l:fname =~? 'NERD_tree' ? 'NERDTree' :
        \ &filetype ==? 'unite' ? g:unite#get_status_string() :
        \ ('' !=# l:fname ? l:fname : '[No Name]')
endfunction

function! LightLineReadonly()
  return &readonly ? '' : ''
endfunction

function! LightLineFugitive()
  if &filetype == "help" || winwidth(0) < 70 
    return ""
  elseif exists('*fugitive#head')
    let branch = fugitive#head()
    return branch !=# '' ? ''.branch : ''
  endif
  return ''
endfunction

function! LightLineModified()
  if &filetype == "help"
    return ""
  elseif &modified
    return "+"
  elseif &modifiable
    return ""
  else
    return ""
  endif
endfunction

" File name function for Lightline statusline
function! LightLineShortFilename()
  if &filetype == "help"
    return ""
  elseif &filetype =~? "NERD_tree"
    return ""
  endif
  return LightLineFilename()
endfunction

function! LightLineFilename()
  return ('' != LightLineReadonly() ? LightLineReadonly() . ' ' : '') .
       \ ('' != expand('%:t') ? expand('%:t') : '[No Name]') .
       \ ('' != LightLineModified() ? ' ' . LightLineModified() : '')
endfunction
"}}}
