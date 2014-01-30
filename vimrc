set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'tomasr/molokai'

filetype plugin indent on

" Misc
set visualbell
set ruler
set showcmd
set wildmenu
set number
set wrap
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

" Markdown
autocmd BufNew,BufNewFile,BufRead *.md,*.markdown set filetype=markdown

" Encryption
set cm=blowfish
autocmd BufReadPost * if &key != "" | set noswapfile nowritebackup viminfo= nobackup noshelltemp history=0 secure | endif
