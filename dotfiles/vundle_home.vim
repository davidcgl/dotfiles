" ---------------------------------
" CtrlP
" ---------------------------------
Plugin 'kien/ctrlp.vim'
Plugin 'FelikZ/ctrlp-py-matcher'

if executable('ag')
  let g:ctrlp_user_command = 'ag %s -l -g ""
        \ --nocolor
        \ --hidden
        \ --ignore .git
        \ --ignore .gitkeep
        \ --ignore .idea
        \ --ignore .meteor
        \ --ignore .\*swp
        \ --ignore .iron'
endif
let g:ctrlp_match_func = { 'match': 'pymatcher#PyMatch' }
let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:20,results:20'
let g:ctrlp_open_new_file = 'r'
let g:ctrlp_open_multiple_files = '2vjr'


" ---------------------------------
" ESFormatter
" ---------------------------------
Plugin 'millermedeiros/vim-esformatter'

autocmd FileType javascript nnoremap <silent> <leader>es :Esformatter<CR>


" ---------------------------------
" Syntastic
" ---------------------------------
Plugin 'scrooloose/syntastic'

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_mode_map = {
    \ 'mode': 'passive',
    \ 'active_filetypes': [],
    \ 'passive_filetypes': ['html', 'css'] }

noremap <leader>sc :SyntasticCheck<CR>


" ---------------------------------
" TernJS
" ---------------------------------
Plugin 'marijnh/tern_for_vim'

let g:tern_show_argument_hints = 'on_move'


" ---------------------------------
" UltiSnips
" ---------------------------------
Plugin 'SirVer/ultisnips'
Plugin 'cmather/vim-meteor-snippets'
Plugin 'honza/vim-snippets'

let g:UltiSnipsExpandTrigger = '<leader>e'


" ---------------------------------
" YouCompleteMe
" ---------------------------------
Plugin 'Valloric/YouCompleteMe'

let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1
