# NeoVIM config

Simple and minimalistic neovim config for ruby development, mostly commented and separated by files.

## Installation

    $ cd ~/.config
    $ git clone git@github.com:sovetnik/nvim.git


## Requirements for Deoplete:

deoplete requires Neovim with if\_python3.
If `:echo has("python3")` returns `1`, then you're done; otherwise, see below.

You can enable Python3 interface with pip:

    $ pip3 install neovim

## Note: deoplete needs neovim-python ver.0.1.8+.
You need update neovim-python module.

    $ pip3 install --upgrade neovim

If you want to read the Neovim-python/python3 interface install documentation,
you should read `:help provider-python` and the [Wiki] (https://github.com/zchee/deoplete-jedi/wiki/Setting-up-Python-for-Neovim)

## Ruby bindings for [Neovim](https://github.com/neovim/neovim).

    $ gem install neovim

    # or with system ruby

    $ sudo gem install neovim

    or

    $ rvm @global do gem install neovim

## Install treesitter languages

  :TSInstall eex
  :TSInstall elixir
  :TSInstall erlang
  :TSInstall ruby

## Language server

  brew install erlang

## CTRLsf backend

  brew install ripgrep
  or
  brew install one of them ack/ag/pt/rg

## Powerline patched font for lightline

  https://github.com/powerline/fonts

## Mappings

  :map will show all mappings

## How to use?

  It strongly recommended to read all readme for plugins in init.vim
