source /apollo/env/envImprovement/var/vimrc

execute pathogen#infect()
syntax on 
filetype plugin indent on

" set theme
set t_Co=16
set background=dark
colorscheme desert 

set expandtab           " enter spaces when tab is pressed
set tabstop=2           " use 4 spaces to represent tab
set softtabstop=2
set shiftwidth=2        " number of spaces to use for auto indent
set autoindent          " copy indent from current line when starting a new line
set ruler               " display row and column of cursor (bottom right)
set number              " line number

" File Specific Settings
" -----------------------------------------------------------------------------
au FileType python setlocal textwidth=79
