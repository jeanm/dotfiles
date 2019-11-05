call plug#begin('~/.local/share/nvim/plugged')
Plug 'morhetz/gruvbox'
Plug 'Yggdroot/indentLine'
Plug 'cespare/vim-toml'
Plug 'rust-lang/rust.vim'
Plug 'dense-analysis/ale'
call plug#end()

" Syntax
set tabstop=2 softtabstop=2 shiftwidth=2 expandtab
set showmatch

" Sane defaults
set wrap
set path+=**

" Search
set ignorecase
set smartcase
set gdefault

" Appearance - Interface
set number
set ruler
set listchars=tab:»\ ,trail:·,nbsp:␣
set list
set colorcolumn=88

" Appearance
color gruvbox
set background=dark

" Leader key
let mapleader="\<Space>"
nnoremap <Leader><CR> :nohl<CR>
nnoremap <Leader>s :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>

let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'python': ['black', 'isort'],
\}
let g:ale_fix_on_save = 1

