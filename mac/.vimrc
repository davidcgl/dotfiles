execute pathogen#infect()

" -----------------------------------------------------------------------------
" Global
" -----------------------------------------------------------------------------
syntax on
filetype plugin indent on

" Themes
set background=dark
colorscheme solarized

" Tabbing/Indenting
set expandtab           " enter spaces when tab is pressed
set tabstop=4           " use 4 spaces to represent tab
set softtabstop=4       " setting to equal tabstop to use all spaces only
set shiftwidth=4        " number of spaces to use for auto indent
set autoindent          " copy indent from current line when starting a new line

" Others
set ruler               " display row and column of cursor (bottom right)
set number              " line number
set smartcase           " ignore case when searching
set showmatch           " show matching bracket

" -----------------------------------------------------------------------------
" File Specific
" -----------------------------------------------------------------------------
au FileType python setlocal textwidth=79

" -----------------------------------------------------------------------------
" Syntastic
" -----------------------------------------------------------------------------
let g:syntastic_mode_map = { 'mode': 'active',
    \ 'active_filetypes': ['py'],
    \ 'passive_filetypes': ['html'] }

" Use flake8 as python syntax checker
" Remember to 'pip install flake8' 
let g:syntastic_python_checkers = ['flake8']
