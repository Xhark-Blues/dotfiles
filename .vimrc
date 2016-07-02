set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"call vundle#begin('~/some/path/here')

Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'lifepillar/vim-solarized8'
Plugin 'Yggdroot/indentLine'
"Plugin 'christoomey/vim-tmux-navigator'
"Plugin 'Valloric/YouCompleteMe'
Plugin 'Quramy/tsuquyomi'
Plugin 'leafgarland/typescript-vim'
Plugin 'Shougo/vimproc.vim'
Plugin 'airblade/vim-gitgutter'

call vundle#end()            " required


syntax on
set number
set ruler
filetype plugin indent on
 "show existing tab with 4 spaces width
set tabstop=2
 " when indenting with '>', use 4 spaces width
set shiftwidth=2
 " On pressing tab, insert 4 spaces
set expandtab
set runtimepath^=~/.vim/bundle/ctrlp.vim

colorscheme solarized8_dark_high
let g:indentLine_color_term = 24
let g:indentLine_char = '·'

set switchbuf=usetab
set t_Co=256
set laststatus=2
nnoremap <F2> :mks! <CR>
nnoremap <F3> :source Session.vim <CR>
nnoremap <c-n> :NERDTreeToggle<CR>
nnoremap <F8> :sbnext<CR>
nnoremap <S-F8> :sbprevious<CR>

nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

let g:airline#extensions#tabline#enabled = 1

let g:airline_powerline_fonts = 1
let g:airline_theme='solarized'

let g:ctrlp_show_hidden = 1

