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
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
call vundle#end()


"ultisnips parametres 
let g:UltiSnipsExpandTrigger="<C-f>"
let g:UltiSnipsJumpForwardTrigger="<C-i>"
let g:UltiSnipsJumpBackwardTrigger="<C-u>"

"takes care of brackets 
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O


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
set splitbelow splitright

set colorcolumn=110
highlight ColorColumn ctermbg=darkgrey
syntax on 


colorscheme Monokai


let mapleader =","


"command t "
nnoremap <leader>t :CommandT<CR>
nnoremap <leader><Space> :CommandTCommand
"nerd tree"'
nnoremap <leader>m :NERDTreeToggle<CR>
"buffer navig"
nnoremap <C-b> :bp<CR>
nnoremap <C-n> :bn<CR>
"split navig "
nnoremap <C-l> <C-w><C-l>
nnoremap <C-h> <C-w><C-h>
nnoremap <C-k> <C-w><C-k>
nnoremap <C-j> <C-w><C-j>


nnoremap <C-UP> :res +5<CR>
nnoremap <C-DOWN> :res -5<CR>
nnoremap <C-LEFT> :vertical res +5<CR>
nnoremap <C-RIGHT> :vertical res -5<CR>
"invert splits "
nnoremap <leader>w <C-w>R
"open terminal"
nnoremap <leader>tt :terminal<CR>


  let g:bufferline_echo = 0
  autocmd VimEnter *
    \ let &statusline='%{bufferline#refresh_status()}'
      \ .bufferline#get_status_string()

