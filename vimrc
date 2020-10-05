syntax on
set backspace=indent,eol,start
set tabstop=2 shiftwidth=2 expandtab
if has("multi_byte")
  set encoding=utf-8
  setglobal fileencoding=utf-8
else
  echoerr "Sorry, this version of (g)vim was not compiled with +multi_byte"
endif
let g:netrw_liststyle = 3


set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'https://github.com/ctrlpvim/ctrlp.vim.git'
Plugin 'https://github.com/scrooloose/nerdtree.git'
Plugin 'https://github.com/vim-scripts/grep.vim.git'
Plugin 'https://github.com/janko-m/vim-test.git'
Plugin 'https://github.com/vim-airline/vim-airline.git'
Plugin 'https://github.com/tpope/vim-fugitive.git'
Plugin 'https://github.com/terryma/vim-multiple-cursors.git'
Plugin 'https://github.com/tpope/vim-rails.git'
Plugin 'flazz/vim-colorschemes'
Plugin 'https://github.com/vim-syntastic/syntastic.git'
Plugin 'https://github.com/honza/vim-snippets.git'
Plugin 'https://github.com/slim-template/vim-slim.git'
Plugin 'jlanzarotta/bufexplorer'
Plugin 'https://github.com/airblade/vim-gitgutter.git'
Plugin 'isRuslan/vim-es6'
call vundle#end()

syntax on
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

noremap ,p <ESC>:NERDTreeToggle<RETURN>

" mapping to navigate between buffers
noremap ,b <ESC>:CtrlPBuffer<RETURN>

autocmd BufNewFile,BufRead *.slim set ft=slim

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

" Open a file in a new tab
" use gt to change tabs
let NERDTreeMapOpenInTab='<ENTER>'
set relativenumber nu

colorscheme molokai
