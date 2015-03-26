set nocompatible
call plug#begin('~/.vim/plugged')
Plug 'gmarik/vundle'
Plug 'SirVer/ultisnips'
Plug 'tomasr/molokai'
Plug 'Yggdroot/indentLine'
Plug 'luochen1990/rainbow'
call plug#end()

filetype plugin indent on

" Misc
set ruler
set showcmd
set wildmenu
set number
set wrap
set autochdir
set mouse=a
set showmatch
set hidden

" Search
set incsearch ignorecase smartcase gdefault

" Syntax
syntax on
set autoindent

" Keys
nnoremap j gj
nnoremap k gk
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" GUI options
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

" Colour
set t_Co=256
color molokai
set background=dark
set colorcolumn=81
highlight NonText ctermfg=LightGray guifg=#CACACA gui=NONE cterm=NONE
highlight SpecialKey ctermfg=red guifg=red gui=NONE cterm=NONE
let g:rainbow_active = 0

" Tabs and invisibles
set tabstop=4 softtabstop=4 shiftwidth=4 expandtab
set listchars=tab:»\ ,trail:·
set list
let g:indentLine_color_gui="red"
let g:indentLine_color_term="red"
let g:indentLine_char = '|'

" UltiSnips
let g:UltiSnipsDontReverseSearchPath="1"
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" Markdown
autocmd BufNew,BufNewFile,BufRead *.md,*.markdown set filetype=markdown
