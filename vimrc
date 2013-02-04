set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'ervandew/supertab'
Bundle 'SirVer/ultisnips'
Bundle 'LaTeX-Box-Team/LaTeX-Box'
Bundle 'tomasr/molokai'

filetype plugin indent on

" Misc
set visualbell
set ruler
set showcmd
set wildmenu
set number
set wrap
set autochdir
set mouse=a

" Search
set incsearch hlsearch showmatch ignorecase smartcase gdefault

" Syntax
syntax on
set autoindent

" LaTeX-Box
let g:LatexBox_output_type="pdf"
let g:LatexBox_latexmk_options="-pdf"
let g:LatexBox_viewer="open -a Skim"

" UltiSnips
let g:UltiSnipsDontReverseSearchPath="1"

" Tabs and invisibles
set tabstop=4 softtabstop=4 shiftwidth=4 noexpandtab
set listchars=tab:»\ ,trail:· ",extends:⇢,precedes:⇠,eol:↵
set list

" Keys
nnoremap j gj
nnoremap k gk
inoremap jk <Esc>

" GUI options
if has('gui_running')
  set transparency=1
  set antialias
  set guioptions=aAce
  set guifont=PragmataPro:h14
  set fuoptions=maxvert,background:Normal
endif

" Colour
"set t_Co=256
color molokai
highlight NonText ctermfg=LightGray guifg=#CACACA gui=NONE cterm=NONE
highlight SpecialKey ctermfg=red guifg=red gui=NONE cterm=NONE
