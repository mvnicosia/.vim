" pathogen (vim package manager)
execute pathogen#infect()

" syntax
syntax on

" colors
set background=dark
let g:solarized_termcolors=256
colorscheme solarized

" indenting
filetype plugin indent on
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set autoindent

" line numbers
set number
highlight LineNr ctermfg=black
highlight LineNr ctermbg=white

" highlight characters past character 80 in python files
autocmd FileType python highlight OverLength ctermbg=red ctermfg=white guibg=#592929
autocmd FileType python match OverLength /\%80v.*/

" highlight markdown files
autocmd BufNewFile,BufReadPost *.md set filetype=markdown

set tabpagemax=100
