"tab options
set tabstop=2
set shiftwidth=2
set expandtab

"enable syntax highlight
syntax on

"display line number
set number

"display hlsearch
set hlsearch

"set runtime path to ctrlP plugin.
"if you don't know ctrlP, see this https://github.com/kien/ctrlp.vim
"or follow this instalation instruction
"http://kien.github.io/ctrlp.vim/#installation
set runtimepath^=~/.vim/bundle/ctrlp.vim

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
