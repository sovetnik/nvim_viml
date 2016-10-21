

" -----------------------------------------------------
" Colorscheme settings {{{
" -----------------------------------------------------

colorscheme railscasts
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
      \               [ 'lineinfo' ],
      \               [ 'percent' ],
      \               [ 'filetype', 'fileencoding' ]
      \            ]
      \ },
      \ 'component': {
      \   'readonly': '%{&filetype=="help"?"HELP":&readonly?"RO":""}'
      \ },
      \ 'component_function': {
      \   'mode': 'LightLineMode',
      \   'modified': 'LightLineModified',
      \   'filename': 'LightLineShortFilename',
      \   'filetype': 'utils#lightLineFiletype',
      \   'fileformat': 'utils#lightLineFileformat',
      \   'fileencoding': 'utils#lightLineFileencoding',
      \   'fugitive': 'LightLineFugitive',
      \   'readonly': 'LightLineReadonly'
      \ },
      \ 'component_visible_condition': {
      \   'readonly': '(&readonly)'
      \ },
      \ 'separator': { 'left': '', 'right': '' },
      \ 'subseparator': { 'left': '', 'right': '' }
      \ }
"}}}

" Mode function for Lightline statusline
function! g:utils#lightLineMode() abort
  let l:fname = expand('%:t')
  return l:fname =~? 'NERD_tree' ? 'NT' :
        \ &filetype ==? 'unite' ? 'Unite' :
        \ winwidth(0) > 70 ? g:lightline#mode() : ''
endfunction

" File format function for Lightline statusline
function! g:utils#lightLineFileformat() abort
  return winwidth(0) > 70 ? &fileformat : ''
endfunction

" Filetype function for Lightline statusline
function! g:utils#lightLineFiletype() abort
  return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype : 'no ft') : ''
endfunction

" File encoding function for Lightline statusline
function! g:utils#lightLineFileencoding() abort
  return winwidth(0) > 70 ? (strlen(&fileencoding) ? &fileencoding : &encoding) : ''
endfunction

" File name function for Lightline statusline
function! g:utils#lightLineFilename() abort
  let l:fname = expand('%:t')
  return l:fname =~? 'NERD_tree' ? 'NERDTree' :
        \ &filetype ==? 'unite' ? g:unite#get_status_string() :
        \ ('' !=# l:fname ? l:fname : '[No Name]')
endfunction


" " -----------------------------------------------------
" " Lightline settings {{{
" " -----------------------------------------------------
" let g:lightline = {
"       \ 'colorscheme': 'wombat',
"       \ 'active': {
"       \   'left': [ [ 'mode', 'paste' ],
"       \             [ 'fugitive', 'readonly', 'filename', 'modified' ] ]
"       \ },
"       \ 'component_function': {
"       \   'fugitive': 'LightLineFugitive',
"       \   'readonly': 'LightLineReadonly',
"       \   'modified': 'LightLineModified',
"       \   'filename': 'LightLineFilename'
"       \ },
"       \ 'separator': { 'left': '', 'right': '' },
"       \ 'subseparator': { 'left': '', 'right': '' }
"       \ }

function! LightLineMode()
  if &filetype == "help"
    return "HELP"
  elseif &filetype =~ "NERD_tree"
    return "NERD_Tree"
  endif
  return g:lightline#mode()
endfunction

function! LightLineReadonly()
  return &readonly ? '' : ''
endfunction

function! LightLineFugitive()
  if &filetype == "help"
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

" function! LightLineFugitive()
"   return exists('*fugitive#head') ? fugitive#head() : ''
" endfunction

function! LightLineFilename()
  return ('' != LightLineReadonly() ? LightLineReadonly() . ' ' : '') .
       \ ('' != expand('%:t') ? expand('%:t') : '[No Name]') .
       \ ('' != LightLineModified() ? ' ' . LightLineModified() : '')
endfunction
"}}}
