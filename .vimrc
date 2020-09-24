filetype off
set nocompatible
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'flazz/vim-colorschemes'
Plugin 'ycm-core/YouCompleteMe'
Plugin 'wincent/command-t'
Plugin 'bling/vim-bufferline'
Plugin 'tpope/vim-surround'
Plugin 'preservim/nerdcommenter'

call vundle#end()

filetype plugin indent on

set number relativenumber
set hidden 
set noswapfile
set wildmenu
set hlsearch
set backspace=indent,eol,start
set autoindent 
set ruler
set laststatus=2

set colorcolumn=110
highlight ColorColumn ctermbg=darkgray

syntax on 


colorscheme Monokai


let mapleader =","

nnoremap <leader>t :CommandT<CR>
nnoremap <leader><Space> :CommandTCommand
nnoremap <leader>m :NERDTreeToggle<CR>
nnoremap <C-j> :bp<CR>
nnoremap <C-k> :bn<CR>
nnoremap <C-l> <C-w><C-l>
nnoremap <C-h> <C-w><C-h>


  let g:bufferline_echo = 0
  autocmd VimEnter *
    \ let &statusline='%{bufferline#refresh_status()}'
      \ .bufferline#get_status_string()

