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
  set colorcolumn=81      " display vertical line margin
  set showcmd             " show partial command in last line of screen
  set smartcase           " case insensitive when searching all lowercase

  " Column limits for Python.
  au FileType python setlocal textwidth=79
  au FileType python setlocal colorcolumn=80

  " Column limits for Java, Ruby, Rust
  au FileType java,ruby,rust setlocal textwidth=100
  au FileType java,ruby,rust setlocal colorcolumn=101
endif
