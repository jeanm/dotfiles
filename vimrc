set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'kien/ctrlp.vim'
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

" Keys
nnoremap j gj
nnoremap k gk
inoremap kj <Esc>

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
"set t_Co=256
color molokai
highlight NonText ctermfg=LightGray guifg=#CACACA gui=NONE cterm=NONE
highlight SpecialKey ctermfg=red guifg=red gui=NONE cterm=NONE

" Tabs and invisibles
set tabstop=4 softtabstop=4 shiftwidth=4 expandtab
set listchars=tab:»\ ,trail:·
set list

" LaTeX-Box
let g:LatexBox_output_type="pdf"
let g:LatexBox_latexmk_options="-pdf"
let g:LatexBox_viewer="open -a Skim"

" UltiSnips
let g:UltiSnipsDontReverseSearchPath="1"
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" Markdown
autocmd BufNew,BufNewFile,BufRead *.md,*.markdown set filetype=markdown
