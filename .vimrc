execute pathogen#infect()
syntax on
set number
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

"UltiSnips
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

let g:UltiSnipsExpandTrigger="<c-e>"
let g:UltiSnipsListSnippets="<c-l>"
