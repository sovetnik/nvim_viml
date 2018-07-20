" Plugin manager (Plug) settings
" Autoinstall {{{
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
" }}}

call plug#begin('~/.config/nvim/plugged')
" -----------------------------------------------------
" Colorschemes {{{
" -----------------------------------------------------
" Plug 'jpo/vim-railscasts-theme'
" Plug 'jordwalke/flatlandia'
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
" Adds start screen with cow
Plug 'mhinz/vim-startify' 
" ,b to show open buffers
Plug 'jeetsukumaran/vim-buffergator' 
" adds filetype glyphs (icons) to other plugins
" Plug 'ryanoasis/vim-devicons'
Plug 'rbgrouleff/bclose.vim'
"}}}

" -----------------------------------------------------
" Hanami plugins {{{
" -----------------------------------------------------
Plug 'sovetnik/vim-hanami'
Plug 'sovetnik/vim-minispec'
"}}}

" -----------------------------------------------------
" Language agnostic plugins {{{
" -----------------------------------------------------
" Asynchronous Lint Engine
Plug 'w0rp/ale'
" Asynchronous maker and linter (needs linters to work)
" Plug 'benekastah/neomake', { 'on': ['Neomake'] }
" Asynchronous runner with quickfix output by :AsyncRun (just like old "!" cmd).
Plug 'skywind3000/asyncrun.vim'
" Autocomplete
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" Automatically closing pair stuff
Plug 'cohama/lexima.vim'
" Snippet support (C-j)
Plug 'SirVer/ultisnips'
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
Plug 'brookhong/ag.vim'
" REPL for some Languages: Codi
Plug 'metakirby5/codi.vim'
" Search Dash.app from Vim
Plug 'rizzatti/dash.vim'
" " REST client
" Plug 'mattn/webapi-vim'
" Test suite Runner
" Plug 'skalnik/vim-vroom'
" Plug 'janko-m/vim-test'
" Plug 'janx/vim-rubytest'
" Plug 'gabebw/vim-spec-runner'
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
" Merginal aims provide a nice inteface for dealing with Git branches
Plug 'idanarye/vim-merginal'
" Git log viewer (Gitv! for file mode)
Plug 'gregsexton/gitv', { 'on': 'Gitv' }
" Git changes showed on line numbers
Plug 'airblade/vim-gitgutter'
" plugin of NERDTree showing git status flags
Plug 'Xuyuanp/nerdtree-git-plugin' 
"}}}

call plug#end()
"}}}


" ====================================================
"  Autocommands
" ====================================================
autocmd BufRead /tmp/psql.edit.* set syntax=sql

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
"  Hanami helper
" ====================================================
let g:hanami_open_strategy = 'vsplit '
" source ~/.config/nvim/hanami.vim

" ====================================================
"  Minitest runner
" ====================================================
" source ~/.config/nvim/minispec.vim

" ====================================================
"  Switch keyboard layout in insert mode for Markdown 
" ====================================================
" source ~/.config/nvim/switchkb.vim

