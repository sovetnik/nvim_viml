" Plugin manager (Plug) settings Autoinstall {{{
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !:
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
" }}}


" ALE completion must be set before load ALE
" let g:ale_completion_enabled = 1

call plug#begin('~/.config/nvim/plugged')
if !has('nvim')
    Plug 'rhysd/vim-healthcheck'
endif

" -----------------------------------------------------
" Colorschemes {{{
" -----------------------------------------------------
" Plug 'KKPMW/moonshine-vim'
Plug 'karoliskoncevicius/moonshine-vim'
" Plug 'ayu-theme/ayu-vim'
" Plug 'savq/melange-nvim'
" Plug 'rebelot/kanagawa.nvim'
" Plug 'ajmwagar/vim-deus'
" Plug 'doums/darcula'
" Plug 'habamax/vim-alchemist'
" Plug 'morhetz/gruvbox'
" Plug 'luisiacc/gruvbox-baby'
" Plug 'ackyshake/Spacegray.vim'
" Plug 'savq/melange-nvim'
" Plug 'novasenco/vulpo'
" Plug 'srcery-colors/srcery-vim'
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
" Plug 'ms-jpq/chadtree', {'branch': 'chad', 'do': 'python3 -m chadtree deps'}

" Toggle term
" Plug 'akinsho/toggleterm.nvim', {'tag' : '*'}

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
" Language agnostic plugins {{{
" -----------------------------------------------------
" Asynchronous Lint Engine
Plug 'w0rp/ale'

" " async language server protocol plugin for vim and neovim
" Plug 'prabirshrestha/vim-lsp'
" " Auto configurations for Language Server for vim-lsp
" Plug 'mattn/vim-lsp-settings'

" Dark powered asynchronous completion framework for neovim/Vim8
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

" " deoplete source for vim-lsp
" Plug 'lighttiger2505/deoplete-vim-lsp'

" Asynchronous maker and linter (needs linters to work)
" Plug 'neomake/neomake'
" Plug 'prabirshrestha/async.vim'
" Asynchronous runner with quickfix output by :AsyncRun (just like old "!" cmd).
" Plug 'skywind3000/asyncrun.vim'

" Leverage the power of Vim's compiler plugins without being bound by synchronicity. 
" Required by vim-test as a strategy
Plug 'tpope/vim-dispatch'

" Automatically closing pair stuff
Plug 'cohama/lexima.vim'

" Easy text exchange operator for Vim (cx)
Plug 'tommcdo/vim-exchange'

" easily search for, substitute, and abbreviate multiple variants of a word
Plug 'tpope/vim-abolish'

" Commenting support (gc)
Plug 'tpope/vim-commentary'

"[e and ]e exchange the current line with the one above or below
Plug 'tpope/vim-unimpaired' 

" dot repeat last command
Plug 'tpope/vim-repeat' 

" quoting/parenthesizing made simple
Plug 'tpope/vim-surround' 

" In project navigation
Plug 'tpope/vim-projectionist'

" fuzzy find file
Plug 'ctrlpvim/ctrlp.vim' 

" Silver Search intergration (grep replacement)
" Ensure that you have the_silver_searcher, or:
" brew install the_silver_searcher
" Plug 'gabesoft/vim-ags'
Plug 'dyng/ctrlsf.vim'

" REPL for some Languages: Codi
" Plug 'metakirby5/codi.vim'

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
Plug 'vim-test/vim-test'
let g:test#strategy = 'dispatch'
"}}}

" -----------------------------------------------------
" Elixir plugins {{{
" -----------------------------------------------------
Plug 'elixir-editors/vim-elixir'
Plug 'slashmili/alchemist.vim'
Plug 'andyl/vim-projectionist-elixir'
Plug 'GrzegorzKozub/vim-elixirls', { 'do': ':ElixirLsCompileSync' }
" Plug 'avdgaag/vim-phoenix'
"}}}

" -----------------------------------------------------
" Hanami plugins {{{
" -----------------------------------------------------
" Plug 'sovetnik/vim-hanami', { 'for': ['ruby'] }
" Plug 'sovetnik/vim-minispec', { 'for': ['ruby'] }
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
Plug 'vim-ruby/vim-ruby', { 'for': ['ruby'] }
" Slim syntax
Plug 'slim-template/vim-slim', { 'for': ['slim'] }
" Rails support (:A, :R, :Rmigration, :Rextract)
Plug 'tpope/vim-rails', { 'for': ['ruby', 'eruby', 'haml', 'slim'] }
"}}}

" -----------------------------------------------------
" Language highlight {{{
" -----------------------------------------------------
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" Minitest syntax
Plug 'sunaku/vim-ruby-minitest', { 'for': ['ruby'] }

" Preview colours in source code while editing
Plug 'ap/vim-css-color'

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
" Enables :GBrowse from fugitive.vim to open GitHub URLs.
Plug 'tpope/vim-rhubarb'

" Git log viewer (Gitv! for file mode)
" Plug 'gregsexton/gitv', { 'on': 'Gitv' } # original, unmaintained
Plug 'sankhesh/gitv', { 'on': 'Gitv' }
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
filetype plugin indent on

autocmd BufRead /tmp/psql.edit.* set syntax=sql
autocmd BufNewFile,BufRead *.heex set syntax=eelixir

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
  " autocmd WinEnter * if &previewwindow | wincmd L | endif
augroup END

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

