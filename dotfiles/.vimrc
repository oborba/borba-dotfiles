"tab options
set tabstop=2
set shiftwidth=2
set expandtab

"enable syntax highlight
syntax on

"display line number
set number

"more intuitive split
set splitbelow
set splitright

"display hlsearch
set hlsearch

" Highlight extra white spaces #
" via http://vim.wikia.com/wiki/Highlight_unwanted_spaces
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

"Remove extra White Spaces
"usage ':call Rws()'
function Rws()
  %s/\s\+$//g
endfunction

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

" Search files easy way with ctrlP
Plugin 'ctrlpvim/ctrlp.vim'
set runtimepath^=~/.vim/bundle/ctrlp.vim "set runtime path to ctrlP plugin.

" Tree view with :NERDTree
Plugin 'scrooloose/nerdtree'

" Auto create the brackets pairs
Plugin 'jiangmiao/auto-pairs'

" Close opened blocks def, if...
Plugin 'tpope/vim-endwise'

"------------ /Plugins --------------

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

