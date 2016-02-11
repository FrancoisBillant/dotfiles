execute pathogen#infect()
syntax on
filetype plugin indent on

"Format
au BufNewFile,BufRead *.py
    \ set tabstop=4 softtabstop=4 textwidth=79 shiftwidth=4 expandtab autoindent fileformat=unix

au BufNewFile,BufRead *.yml
    \ set tabstop=2 softtabstop=2 shiftwidth=2 expandtab autoindent fileformat=unix

"Plugins configs
"
"NERDTree
map <leader>n  :NERDTree<CR>

"SimpylFold
"Show the docstrings for folded code
let g:SimpylFold_docstring_preview=1

"YCM options
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
