set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath

if !exists('g:vscode')
  source ~/.vimrc
else
  call plug#begin('~/.vim/plugged')
  Plug 'tpope/vim-surround'
  call plug#end()

  xmap gc  <Plug>VSCodeCommentary
  nmap gc  <Plug>VSCodeCommentary
  omap gc  <Plug>VSCodeCommentary
  nmap gcc <Plug>VSCodeCommentaryLine

  " Use system clipboard
  set clipboard+=unnamedplus

  " Clear highlighting.
  nnoremap <C-l> :noh<CR> 

  set ignorecase          " case insensitive search and substitute
  set incsearch           " search as you type
  set showcmd             " show partial command in last line of screen
  set smartcase           " case insensitive when searching all lowercase

  " For Racket
  au BufReadPost *.rkt,*.rktl set filetype=scheme
  au FileType scheme setlocal textwidth=102
  au FileType scheme setlocal colorcolumn=103
endif
