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
endif
