" http://stackoverflow.com/questions/16902317/vim-slow-with-ruby-syntax-highlighting
if version > 703
  set re=1
endif

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

" show filenames
set laststatus=2

" highlight characters past character 80 in python files
autocmd FileType python highlight OverLength ctermbg=red ctermfg=white guibg=#592929
autocmd FileType python match OverLength /\%80v.*/

" highlight markdown files
autocmd BufNewFile,BufReadPost *.md set filetype=markdown

" netrw (directory explorer)
autocmd VimEnter * if !argc() | Explore | endif
autocmd VimEnter * if isdirectory(expand('<afile>')) | Explore | endif

" tabs
set tabpagemax=100

" code folding
set foldmethod=syntax 
set foldnestmax=10
set nofoldenable
set foldlevel=2

" scrolling: keeps cursor vertically centered on long pages
set so=999

"ctrlp
set runtimepath^=~/.vim/bundle/ctrlp.vim
