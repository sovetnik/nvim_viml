" -----------------------------------------------------
" Colorscheme settings {{{
" -----------------------------------------------------
" set termguicolors
" set background=dark
colorscheme moonshine

""" Highlighting 
hi Boolean ctermfg=104  cterm=NONE
highlight Comment ctermfg=246 cterm=NONE

" highlight only text, no background
highlight Search cterm=none ctermbg=none ctermfg=225 guibg=none
" Errors in QF and sign column
hi Error ctermfg=196  cterm=none

" highlight lines vimdiff
highlight DiffAdd           cterm=bold ctermbg=none ctermfg=113
highlight DiffDelete        cterm=bold ctermbg=none ctermfg=203
highlight DiffChange        cterm=bold ctermbg=none ctermfg=208

hi link diffBDiffer        WarningMsg
hi link diffCommon         WarningMsg
hi link diffDiffer         DiffChange
hi link diffIdentical      WarningMsg
hi link diffIsA            WarningMsg
hi link diffNoEOL          WarningMsg
hi link diffOnly           WarningMsg
hi link diffRemoved        DiffDelete
hi link diffAdded          DiffAdd
" }}}

" -----------------------------------------------------
" Signify settings {{{
" -----------------------------------------------------
let g:signify_sign_add               = '+'
let g:signify_sign_delete            = '-'
let g:signify_sign_delete_first_line = '^'
let g:signify_sign_change            = '~'
let g:signify_sign_changedelete      = g:signify_sign_change

" highlight signs in Sy
highlight SignifySignAdd    cterm=bold ctermbg=none ctermfg=113
highlight SignifySignDelete cterm=bold ctermbg=none ctermfg=203
highlight SignifySignChange cterm=bold ctermbg=none ctermfg=220
" }}}

" -----------------------------------------------------
" Lightline settings {{{
" -----------------------------------------------------
" disable -- INSERT / NORMAL -- message, 
" because the mode information is displayed in the statusline. 
set noshowmode

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
  elseif exists('*FugitiveHead')
    let branch = FugitiveHead()
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
