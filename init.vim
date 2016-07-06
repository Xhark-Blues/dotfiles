
call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'lifepillar/vim-solarized8'
Plug 'Yggdroot/indentLine'
Plug 'christoomey/vim-tmux-navigator'
"Plug 'Valloric/YouCompleteMe'
"Plug 'Quramy/tsuquyomi'
Plug 'leafgarland/typescript-vim'
Plug 'Shougo/vimproc.vim'
Plug 'airblade/vim-gitgutter'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'
Plug 'scrooloose/syntastic'
Plug 'Shougo/unite.vim'
Plug 'mhartington/vim-typings'
Plug 'suan/vim-instant-markdown'


call plug#end()

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

" Styles
colorscheme solarized8_dark_high
let g:indentLine_color_term = 24
let g:indentLine_char = '·'
set t_Co=256
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme='solarized'

let cwd = getcwd()

" Show hidden files when searching with ctrlp
let g:ctrlp_show_hidden = 1
set shell=sh

" Save and load sessions
nnoremap <F2> :mks! <CR>
nnoremap <F3> :source Session.vim <CR>

" Unselect text after search
nnoremap <Esc> :noh <CR>

" Reload config
nnoremap <c-r> :so $MYVIMRC <CR>

nnoremap <c-n> :NERDTreeToggle<CR>
nnoremap <F8> :sbnext<CR>
nnoremap <S-F8> :sbprevious<CR>

" Easy navigation through splits
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"let g:tsuquyomi_disable_quickfix = 1
let g:syntastic_typescript_checkers = ['tsc', 'tslint']
let g:syntastic_typescript_tsc_args = ''
let g:syntastic_typescript_tsc_fname = ''
