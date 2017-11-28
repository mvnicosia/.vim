" add plugins
call plug#begin('~/.vim/plugged')
Plug 'kien/ctrlp.vim'
Plug 'mileszs/ack.vim'
Plug 'tpope/vim-bundler'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-vinegar'
Plug 'w0rp/ale'
call plug#end()

" syntax
syntax on

" searching
set ignorecase
set smartcase
set hlsearch
set incsearch
nnoremap <CR> :noh<CR><CR>

" indenting
filetype plugin indent on
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set autoindent
autocmd FileType javascript setlocal shiftwidth=4 tabstop=4 softtabstop=4 expandtab autoindent

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

" scrolling: keeps cursor vertically centered on long pages
set so=999

"ctrlp
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_show_hidden = 1

" new splits
set splitright
set splitbelow
