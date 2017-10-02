execute pathogen#infect()

" Color
syntax on
set background=dark
colorscheme solarized

set mouse=a

" Display
set nu
set ls=2

" Tabs
set ts=2
set sw=2
set sts=2
set expandtab

" Etc.
set hlsearch
set nocompatible

set clipboard=unnamed

" Fix backspace
set backspace=indent,eol,start

"set colorcolumn=100

filetype plugin indent on

" Highlight redundant spaces
autocmd ColorScheme * RedundantSpaces ctermbg=red
" Hightlighting and spell check for git-commit
autocmd Filetype gitcommit setlocal spell textwidth=72

" Clear highlighting on Ctrl+L
nnoremap <silent> <C-l> :nohl<CR><C-l>

" Auto line wrap for paper writing.
"set tw=100

" NERDTree
autocmd BufEnter * NERDTreeMirror

"CTRL-z to toggle sidebar view with CTRL-z
nmap <silent> <C-z> :NERDTreeToggle<CR>
"Set F2 to put the cursor to the nerdtree
nmap <silent> <F2> :NERDTreeFind<CR>

" CTRL-b to make in current directory
nmap <C-B> :!make<CR>

""""" LANGUAGE SPECIFIC

""" Rust
set hidden
let g:ycm_rust_src_path = "/Users/shoumikpalkar/.rustup/toolchains/stable-x86_64-apple-darwin/lib/rustlib/src/rust/src/"

au FileType rust nmap gs <Plug>(rust-def-split)
