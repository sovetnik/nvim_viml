" ====================================================
"  Switch keyboard layout in insert mode for Markdown 
" ====================================================
"
" Requires xkbswitch-macosx binary from
" https://github.com/myshov/xkbswitch-macosx

source ~/.config/nvim/setting.vim
function! switchkb#enter_ins()
  if exists('g:swkb_current')
    if g:swkb_current != 1
      call system('xkbswitch -s 0')
    end
  else
    let g:swkb_current = 1 
  end
endfunction

function! switchkb#exit_ins()
  let g:swkb_current = system('xkbswitch -g') 
  call system('xkbswitch -s 1')
endfunction

autocmd InsertEnter *.md call switchkb#enter_ins()
autocmd InsertLeave *.md call switchkb#exit_ins()
