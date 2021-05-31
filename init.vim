" Plugin manager (Plug) settings
" Autoinstall {{{
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
" }}}

if !has('nvim')
    Plug 'rhysd/vim-healthcheck'
endif

" ALE completion must be set before load ALE
" let g:ale_completion_enabled = 1

call plug#begin('~/.config/nvim/plugged')
" -----------------------------------------------------
" Colorschemes {{{
" -----------------------------------------------------
Plug 'KKPMW/moonshine-vim'
"}}}

" -----------------------------------------------------
" Time tracking {{{
" -----------------------------------------------------
Plug 'wakatime/vim-wakatime'
"}}}

" -----------------------------------------------------
" Interface improving {{{
" -----------------------------------------------------
" Nerdtree file browser
Plug 'scrooloose/nerdtree', { 'on': ['NERDTreeFind', 'NERDTreeToggle'] }

" Lightline (simple status line)
Plug 'itchyny/lightline.vim'
" ALE indicator for the lightline
Plug 'maximbaz/lightline-ale'

" Adds start screen with cow
Plug 'mhinz/vim-startify' 

" ,b to show open buffers
Plug 'jeetsukumaran/vim-buffergator' 

Plug 'rbgrouleff/bclose.vim'
" YAML, RAML, EYAML & SaltStack SLS folding
" Plug 'pedrohdz/vim-yaml-folds'
"}}}

" -----------------------------------------------------
" Autocomplete plugins {{{
" -----------------------------------------------------
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" Plug 'uplus/deoplete-solargraph'
" Plug 'fishbullet/deoplete-ruby'
" Plug 'Shougo/neco-syntax'
" Plug 'Shougo/neco-vim'
"}}}

" -----------------------------------------------------
" Language agnostic plugins {{{
" -----------------------------------------------------
" Asynchronous Lint Engine
Plug 'w0rp/ale'

" Asynchronous maker and linter (needs linters to work)
" Plug 'neomake/neomake'
" Plug 'prabirshrestha/async.vim'
" Asynchronous runner with quickfix output by :AsyncRun (just like old "!" cmd).
" Plug 'skywind3000/asyncrun.vim'

" Automatically closing pair stuff
Plug 'cohama/lexima.vim'

" Easy text exchange operator for Vim (cx)
Plug 'tommcdo/vim-exchange'

" Commenting support (gc)
Plug 'tpope/vim-commentary'

"[e and ]e exchange the current line with the one above or below
Plug 'tpope/vim-unimpaired' 

" dot repeat last command
Plug 'tpope/vim-repeat' 

" quoting/parenthesizing made simple
Plug 'tpope/vim-surround' 

" fuzzy find file
Plug 'ctrlpvim/ctrlp.vim' 

" Silver Search intergration (grep replacement)
" Ensure that you have the_silver_searcher, or:
" brew install the_silver_searcher
" Plug 'gabesoft/vim-ags'
Plug 'dyng/ctrlsf.vim'

" REPL for some Languages: Codi
Plug 'metakirby5/codi.vim'

" Search Dash.app from Vim
Plug 'rizzatti/dash.vim'

" Make the yanked region apparent!
Plug 'machakann/vim-highlightedyank'

" " REST client
Plug 'baverman/vial'
Plug 'baverman/vial-http'
"}}}

" -----------------------------------------------------
" Test suite Runners {{{
" -----------------------------------------------------
" Test suite Runner
" Plug 'skalnik/vim-vroom'
" Plug 'janko-m/vim-test'
" Plug 'reinh/vim-makegreen'
" Plug 'janx/vim-rubytest'
" Plug 'gabebw/vim-spec-runner'
" Plug 'thoughtbot/vim-rspec'
"}}}

" -----------------------------------------------------
" Elixir plugins {{{
" -----------------------------------------------------
Plug 'elixir-editors/vim-elixir'
Plug 'slashmili/alchemist.vim'
"}}}

" -----------------------------------------------------
" Hanami plugins {{{
" -----------------------------------------------------
Plug 'sovetnik/vim-hanami'
Plug 'sovetnik/vim-minispec'
"}}}

" -----------------------------------------------------
" HTML {{{
" -----------------------------------------------------
" Auto close (X)HTML tags
Plug 'alvan/vim-closetag'
"}}}

" -----------------------------------------------------
" Snippets {{{
" -----------------------------------------------------
" Track the engine.
Plug 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
Plug 'honza/vim-snippets'

" provides support for expanding abbreviations similar to emmet
Plug 'mattn/emmet-vim'
"}}}

" -----------------------------------------------------
" Ruby / Rails {{{
" -----------------------------------------------------
" Ruby support (plays nicely with tpope/rbenv-ctags)
Plug 'vim-ruby/vim-ruby'
" RI documentation for Ruby
" Plug 'danchoi/ri.vim'
" Slim syntax
Plug 'slim-template/vim-slim'
" Rails support (:A, :R, :Rmigration, :Rextract)
Plug 'tpope/vim-rails', { 'for': ['ruby', 'eruby', 'haml', 'slim'] }
" Bundler support (plays nicely with tpope/gem-ctags)
Plug 'tpope/vim-bundler', { 'for': ['ruby', 'eruby', 'haml', 'slim'] }
" Minitest syntax
Plug 'sunaku/vim-ruby-minitest' 
"}}}

" -----------------------------------------------------
" Language highlight {{{
" -----------------------------------------------------
"  Api Blueprint (apib)
Plug 'kylef/apiblueprint.vim'

" CoffeeScript (js)
Plug 'kchmck/vim-coffee-script'

" Preview colours in source code while editing
Plug 'ap/vim-css-color'

" JavaScript
Plug 'pangloss/vim-javascript'

" Vue.js component
Plug 'posva/vim-vue'

" Support for editing fish scripts
Plug 'dag/vim-fish'

" Support for editing fish scripts
Plug 'ekalinin/Dockerfile.vim'

" Support for nginx conf files
Plug 'fatih/vim-nginx'

" -----------------------------------------------------
" Git integration {{{
" -----------------------------------------------------
" Fugitive
Plug 'tpope/vim-fugitive'
" GitHub extension for fugitive.vim
Plug 'tpope/vim-rhubarb'
" Merginal aims provide a nice inteface for dealing with Git branches
" Plug 'idanarye/vim-merginal'
" Git log viewer (Gitv! for file mode)
Plug 'gregsexton/gitv', { 'on': 'Gitv' }
" Git changes showed on line numbers
" Plug 'airblade/vim-gitgutter'
Plug 'mhinz/vim-signify'
" plugin of NERDTree showing git status flags
Plug 'Xuyuanp/nerdtree-git-plugin' 
"}}}

" adds filetype glyphs (icons) to other plugins
" moved in end of plug to be sure it load after 
" nerdtree, lightline & ctrlp
" Plug 'ryanoasis/vim-devicons'

call plug#end()
"}}}


" ====================================================
"  Autocommands
" ====================================================
autocmd BufRead /tmp/psql.edit.* set syntax=sql

"open help in right vsplit
autocmd FileType help wincmd L

augroup qf
  " we don't want quickfix buffers to pop up when doing :bn or :bp
  autocmd FileType qf set nobuflisted
  " cursorline only in quickfix
  autocmd FileType qf setlocal cursorline
augroup END

"open preview in right vsplit
augroup PreviewAutocmds
  autocmd!
  autocmd WinEnter * if &previewwindow | wincmd L | endif
augroup END

" augroup VialHttpSettings
"     au!
"     au BufNewFile __vial_http__ nnoremap <buffer> <silent> <}> :b __vial_http_req__<cr>
"     au BufNewFile __vial_http__ nnoremap <buffer> <silent> <{> :b __vial_http_raw__<cr>
"     au BufNewFile __vial_http_req__ nnoremap <buffer> <silent> <}> :b __vial_http_hdr__<cr>
"     au BufNewFile __vial_http_req__ nnoremap <buffer> <silent> <{> :b __vial_http__<cr>
"     au BufNewFile __vial_http_hdr__ nnoremap <buffer> <silent> <}> :b __vial_http_raw__<cr>
"     au BufNewFile __vial_http_hdr__ nnoremap <buffer> <silent> <{> :b __vial_http_req__<cr>
"     au BufNewFile __vial_http_raw__ nnoremap <buffer> <silent> <}> :b __vial_http__<cr>
"     au BufNewFile __vial_http_raw__ nnoremap <buffer> <silent> <{> :b __vial_http_hdr__<cr>
" augroup END

" ====================================================
"  Basic settings 
" ====================================================
source ~/.config/nvim/setting.vim

" ====================================================
"  Mapping settings
" ====================================================
source ~/.config/nvim/remap.vim

" ====================================================
"  Colorscheme & Lightline config
" ====================================================
source ~/.config/nvim/style.vim

" ====================================================
"  Plugin settings 
" ====================================================
source ~/.config/nvim/plugsettings.vim

" ====================================================
"  Swap buffers (Leader-z)
" ====================================================
source ~/.config/nvim/swapbuf.vim

" ====================================================
"  Hanami helper
" ====================================================
let g:hanami_open_strategy = 'vsplit '
" source ~/development/vim-hanami/plugin/hanami.vim

" ====================================================
"  Minitest runner
" ====================================================
" source ~/development/vim-minispec/plugin/minispec.vim
" source ~/.config/nvim/minispec.vim

" ====================================================
"  Switch keyboard layout in insert mode for Markdown 
" ====================================================
" source ~/.config/nvim/switchkb.vim

