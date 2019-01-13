" ====================================================
" Basic settings (Neovim defaults: 
" https://neovim.io/doc/user/vim_diff.html#nvim-option-defaults) {{{
" ====================================================

" set main language
language en_US

" change the terminal's title
set title

" Absolute number for active line, relative for others
set number

set relativenumber

" Show incomplete cmds down the bottom
set showcmd

" Smart case search if there is uppercase
set smartcase

" Case insensitive search
set ignorecase

" Long line break by words
set linebreak

" Use spaces instead tabs
set expandtab
set softtabstop=2
set shiftwidth=2


" Re-reads file if changed otuside of vim but not in vim
set autoread

" Write buffer when focus lost by any reason
" (when not set, possible situation, when some unsaved changes prevent autoread )
set autowriteall

" write backup before overwriting file, and remove if successfully written
set nobackup
set noswapfile
set writebackup

" Start scrolling when we're 7 lines away from margins
set scrolloff=7

" Use a system clipboard
set clipboard=unnamed

" This allows buffers to be hidden if you've modified a buffer.
" This is almost a must if you wish to use buffers in this way.
set hidden

" Live substitution
set inccommand=nosplit

"}}}

