" editing
set backspace=indent,eol,start

" https://github.com/junegunn/vim-plug
" run :PlugUpdate
" add plugins
call plug#begin('~/.vim/plugged')
Plug 'kien/ctrlp.vim'
Plug 'tpope/vim-bundler'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-vinegar'
Plug 'w0rp/ale'
Plug 'metakirby5/codi.vim'
Plug 'leafgarland/typescript-vim'
Plug 'dart-lang/dart-vim-plugin'
call plug#end()

" colors
set background=dark
colorscheme desert

" ale configuration:
" https://eslint.org/docs/user-guide/getting-started
" brew install npm
" npm install -g eslint
" eslint --init

" syntax
syntax on

" searching
set ignorecase
set smartcase
set hlsearch
set incsearch
nnoremap <CR> :noh<CR><CR>
hi Search ctermbg=LightYellow ctermfg=Red

" indenting
filetype plugin indent on
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set autoindent
autocmd FileType javascript setlocal shiftwidth=4 tabstop=4 softtabstop=4 expandtab autoindent
autocmd FileType java setlocal shiftwidth=4 tabstop=4 softtabstop=4 expandtab autoindent
autocmd FileType groovy setlocal shiftwidth=4 tabstop=4 softtabstop=4 expandtab autoindent

" line numbers
set number
highlight LineNr ctermfg=black
highlight LineNr ctermbg=white

" show filenames
set laststatus=2

" highlight characters past character 80 in python files
autocmd FileType python highlight OverLength ctermbg=red ctermfg=white guibg=#592929
autocmd FileType python match OverLength /\%80v.*/

" markdown files
autocmd BufNewFile,BufReadPost *.md set filetype=markdown
autocmd BufNewFile,BufReadPost *.md set linebreak
autocmd BufNewFile,BufReadPost *.md set numberwidth=6
autocmd BufNewFile,BufReadPost *.md set columns=106

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
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll|class)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }

" new splits
set splitright
set splitbelow

" highlight trailing whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
