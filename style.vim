" -----------------------------------------------------
" Colorscheme settings {{{
" -----------------------------------------------------

" colorscheme railscasts
" set background=dark
colorscheme moonshine

hi Comment          ctermbg=NONE ctermfg=246 cterm=NONE
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
      \   'filetype': 'LightLineFiletype',
      \   'fileformat': 'LightLineFileformat',
      \   'fileencoding': 'LightLineFileencoding',
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
