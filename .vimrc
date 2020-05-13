set incsearch
set hlsearch
set ignorecase
set showmatch

set nu! rnu!
set cursorline

syntax on
hi CursorLine term=bold cterm=bold guibg=Grey50

"set expandtab
set tabstop=4 "vim interpret
set shiftwidth=4
set softtabstop=4

set wildmenu
ca te tabedit

set nocompatible
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'jiangmiao/auto-pairs'

Plugin 'soramugi/auto-ctags.vim'
Plugin 'majutsushi/tagbar'

call vundle#end()            " required
filetype plugin indent on    " required

ca tbt TagbarToggle
ca tbc TagbarClose
let g:auto_ctags = 1
let g:tagbar_width = 80

