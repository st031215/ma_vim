set incsearch
set hlsearch
set ignorecase
set showmatch
set updatetime=100

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
Plugin 'preservim/nerdcommenter'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'
Plugin 'rhysd/vim-clang-format'
Plugin 'fatih/vim-go'
Plugin 'easymotion/vim-easymotion'
Plugin 'crusoexia/vim-dream'
Plugin 'vim-scripts/gtags.vim'
Plugin 'ycm-core/YouCompleteMe'

Plugin 'morhetz/gruvbox'
Plugin 'ayu-theme/ayu-vim'
Plugin 'Jorengarenar/vim-darkness'
Plugin 'cormacrelf/vim-colors-github'
call vundle#end()            " required
filetype plugin indent on    " required
let g:ctrlp_open_new_file = 't'
let g:clang_format#command = "clang-format-9"
autocmd FileType c,cpp,objc vnoremap <buffer><Leader>cf :ClangFormat<CR>
let g:NERDCompactSexyComs = 1
let g:NERDCustomDelimiters = { 'c': { 'left': '/*','right': '*/' } }

ca tbt TagbarToggle
ca tbc TagbarClose

let g:auto_ctags = 1
let g:tagbar_width = 80

set completeopt-=preview

"colorscheme dream-light
"colorscheme gruvbox
"set background=light
"let g:gruvbox_contrast_light="soft"
"
"set termguicolors
"let ayucolor="light"
"colorscheme ayu
"
colorscheme github
let g:lightline = {'colorscheme':'github'}
