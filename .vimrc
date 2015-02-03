" =============================================================================
" Vundle
" =============================================================================
set nocompatible
filetype off

" Setup runtime path to include Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'bling/vim-airline'
Plugin 'kien/ctrlp.vim'
Plugin 'FelikZ/ctrlp-py-matcher'
Plugin 'altercation/vim-colors-solarized'

" ------------------------------------
" vim-airline
" ------------------------------------
let g:airline_theme = 'badwolf'
let g:airline#extensions#tabline#enabled = 1

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ':'
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''

" ---------------------------------
" CtrlP
" ---------------------------------
if executable('ag')
  let g:ctrlp_user_command = 'ag %s -l -g ""
        \ --nocolor
        \ --hidden
        \ --ignore .git'
endif

let g:ctrlp_match_func = { 'match': 'pymatcher#PyMatch' }
let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:20,results:20'

call vundle#end()
filetype plugin indent on

" =============================================================================
" General
" =============================================================================

" Colors
syntax on
set background=dark
colorscheme solarized

" Editing
set expandtab           " enter spaces when tab is pressed
set tabstop=2           " use 2 spaces to represent tab
set softtabstop=2       " setting to equal tabstop to use all spaces only
set shiftwidth=2        " number of spaces to use for auto indent
set autoindent          " copy indent from current line when starting new line
set colorcolumn=80      " display vertical line margin
set ruler               " display row and column of cursor (bottom right)
set number              " line number
set smartcase           " ignore case when searching
set showmatch           " show matching bracket
set laststatus=2        " always show status line

" Buffers
nnoremap <leader>t :enew<CR>
nnoremap <leader><Tab> :bnext<CR>
nnoremap <leader>` :bprevious<CR>
nnoremap <leader>w :bd<CR>

" Moving lines
nnoremap <leader>j :m .+1<CR>==
nnoremap <leader>k :m-2<CR>==
vnoremap <leader>j :m '>+1<CR>gv=gv
vnoremap <leader>k :m '<-2<CR>gv=gv

" Save/load sessions
map <F2> :mksession! ~/.vim_session <CR>
map <F3> :source ~/.vim_session <CR>
