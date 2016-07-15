" Encode
scriptencoding utf-8
set encoding=utf-8
set nocompatible              " be iMproved, required
filetype off                  " required

"tab options
set tabstop=2
set shiftwidth=2
set expandtab

"display line number
set number

"more intuitive split
set splitbelow
set splitright

"display hlsearch
set hlsearch

"highlight column on 80
highlight ColorColumn ctermbg=235 guibg=#2c2d02
let &colorcolumn=81

"Manage vim Plugins
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"------------ Plugins ---------------

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Airline status bar
Plugin 'vim-airline/vim-airline'
set laststatus=2 "Appear all the time

" Airline themes
Plugin 'vim-airline/vim-airline-themes'

" Search files easy way with ctrlP
Plugin 'ctrlpvim/ctrlp.vim'
set runtimepath^=~/.vim/bundle/ctrlp.vim "set runtime path to ctrlP plugin.

" Tree view with :NERDTree
Plugin 'scrooloose/nerdtree'

" Auto create the brackets pairs
Plugin 'jiangmiao/auto-pairs'

" Close opened blocks def, if...
Plugin 'tpope/vim-endwise'

" Fix extra white spaces
Plugin 'bronson/vim-trailing-whitespace'

" Elixir syntax
Plugin 'elixir-lang/vim-elixir'

"------------ /Plugins --------------

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Syntax on by default
syntax on
