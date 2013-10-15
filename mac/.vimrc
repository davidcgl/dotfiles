execute pathogen#infect()
syntax on
filetype plugin indent on

" set Solarized theme
set background=dark
colorscheme solarized

set expandtab           " enter spaces when tab is pressed
set tabstop=4           " use 4 spaces to represent tab
set softtabstop=4
set shiftwidth=4        " number of spaces to use for auto indent
set autoindent          " copy indent from current line when starting a new line
set ruler               " display row and column of cursor (bottom right)
set number              " line number

" File Specific Settings
" -----------------------------------------------------------------------------
au FileType python setlocal textwidth=79

" Syntastic Settings
" -----------------------------------------------------------------------------
let g:syntastic_mode_map = { 'mode': 'active',
    \ 'active_filetypes': ['py'],
    \ 'passive_filetypes': ['html'] }

" Use flake8 as python syntax checker
" Remember to 'pip install flake8' 
let g:syntastic_python_checkers = ['flake8']
