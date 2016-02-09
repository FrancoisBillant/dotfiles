execute pathogen#infect()
syntax on
filetype plugin indent on

"Show the docstrings for folded code
let g:SimpylFold_docstring_preview=1

"YCM options
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
