set nocompatible
call plug#begin('~/.vim/plugged')
Plug 'SirVer/ultisnips'
Plug 'morhetz/gruvbox'
Plug 'itchyny/lightline.vim'
Plug 'JuliaLang/julia-vim'
Plug 'benekastah/neomake'
Plug 'Yggdroot/indentLine'
Plug 'tpope/vim-unimpaired'
call plug#end()

" Syntax
filetype plugin indent on
syntax on
set autoindent
set tabstop=4 softtabstop=4 shiftwidth=4 expandtab
set showmatch

" Sane defaults
set wildmenu
set wrap
set autochdir
set mouse=a

" Sessions
set ssop=buffers,sesdir,tabpages,localoptions

" Search
set hlsearch
set incsearch
set ignorecase
set smartcase
set gdefault

" Keys
nnoremap j gj
nnoremap k gk
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" Appearance - Interface
set number
set ruler
set listchars=tab:»\ ,trail:·
set list
set cursorline
set colorcolumn=81
let g:tex_conceal= 'adgm'

" Appearance - Colours
color gruvbox
set background=dark
highlight NonText ctermfg=LightGray guifg=#CACACA gui=NONE cterm=NONE
highlight SpecialKey ctermfg=red guifg=red gui=NONE cterm=NONE
if !has('gui_running')
    set t_Co=256
endif

" Appearance - GUI
if has('gui_running')
  set antialias
  set guioptions=aAce
  if has('gui_macvim')
    set guifont=PragmataPro:h14
    set fuoptions=maxvert,background:Normal
  else
    set guifont=PragmataPro\ 11
  endif
endif

" Appearance - Plugins
let g:rainbow_active = 0
let g:indentLine_color_gui="red"
let g:indentLine_color_term="red"
let g:indentLine_char = '|'
let g:lightline = {
    \ 'colorscheme': 'wombat',
    \ 'component': {
    \   'readonly': '%{&readonly?"x":""}',
    \ },
    \ 'separator': { 'left': '', 'right': '' },
    \ 'subseparator': { 'left': '|', 'right': '|' }
    \ }

" Tabs and invisibles
set expandtab tabstop=4 shiftwidth=4
set listchars=tab:»\ ,trail:·
set list
let g:indentLine_color_gui="red"
let g:indentLine_color_term="red"
let g:indentLine_char = '|'
set colorcolumn=80

" UltiSnips
let g:UltiSnipsDontReverseSearchPath="1"
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"

" Markdown
autocmd BufNew,BufNewFile,BufRead *.md,*.markdown set filetype=markdown

" Python
autocmd Filetype python setlocal expandtab tabstop=4 shiftwidth=4

" Leader key
let mapleader = "\<Space>"
nnoremap <Leader><CR> :nohl<CR>
nnoremap <Leader>m :w<CR>:Neomake<CR>
nnoremap <Leader>M :w<CR>:Neomake!<CR>
nnoremap <Leader>s :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>

