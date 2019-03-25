if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
      \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug 'junegunn/vader.vim'

call plug#end()

syntax on

set number
set ai
set wrap

set showmatch
set hlsearch
set incsearch
set ignorecase

set tabstop=2
set shiftwidth=2
set smarttab


set backspace=2
