
call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'Yggdroot/indentLine'
Plug 'christoomey/vim-tmux-navigator'
"Plug 'Valloric/YouCompleteMe'
Plug 'ajmwagar/vim-dues'
Plug 'Shougo/vimproc.vim', { 'do' : 'make' }
Plug 'w0rp/ale'
Plug 'Quramy/tsuquyomi'
Plug 'leafgarland/typescript-vim'
Plug 'Shougo/vimproc.vim'
Plug 'airblade/vim-gitgutter'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'
"Plug 'scrooloose/syntastic'
Plug 'Shougo/unite.vim'
Plug 'mhartington/vim-typings'
Plug 'shime/vim-livedown'
Plug 'alunny/pegjs-vim'
Plug 'nono/vim-handlebars'
Plug 'diepm/vim-rest-console'
call plug#end()

syntax on
set number
set ruler
filetype plugin indent on

set encoding=utf-8
"show existing tab with 2 spaces width
set tabstop=2
 " when indenting with '>', use 2 spaces width
set shiftwidth=2
 " On pressing tab, insert 2 spaces
set expandtab
set runtimepath^=~/.vim/bundle/ctrlp.vim

" Styles
set t_Co=256
set background=dark
colorscheme dues
let g:indentLine_color_term = 24
let g:indentLine_char = '·'
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme='cool'

" Automatically run markdown previews
let g:livedown_autorun = 1
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
nnoremap <c-c> :so $MYVIMRC <CR>

nnoremap <c-n> :NERDTreeToggle<CR>
nnoremap <F8> :sbnext<CR>
nnoremap <S-F8> :sbprevious<CR>

autocmd FileType typescript nnoremap <c-u> :echo tsuquyomi#hint()<CR>

" Easy navigation through splits
" nnoremap <c-j> <c-w>j
" nnoremap <c-k> <c-w>k
" nnoremap <c-h> <c-w>h
" nnoremap <c-l> <c-w>l

set statusline+=%#warningmsg#
set statusline+=%{ALEGetStatusLine()}
let g:ale_statusline_format = ['⨉ %d', '⚠ %d', '⬥ ok']
let g:ale_lint_on_save = 0
let g:ale_lint_on_text_changed = 1
"set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 1
"
"let g:tsuquyomi_disable_quickfix = 1
"let g:syntastic_typescript_checkers = ['tsuquyomi']
"let g:syntastic_typescript_tsc_args = ''
"let g:syntastic_typescript_tsc_fname = ''

imap <C-Space> <C-x><C-o>

com! FormatJSON %!python -m json.tool
" show quotes on json objects
set conceallevel=0

" VIM-REST-CONSOLE (#2975)
" Allow GET requests to have body
"   note: vrc_split_request_body is ignored (= 0) when this is set (= 1)
let g:vrc_allow_get_request_body = 1
" Enable automatic formatting of the response
let g:vrc_auto_format_response_enabled = 1
" Include response header
let g:vrc_include_response_header = 1
" Print executed curl command
let g:vrc_show_command = 1
" Set trigger key (<C-j> by default)
let g:vrc_trigger = ',,sr'


set timeoutlen=1000 ttimeoutlen=0
