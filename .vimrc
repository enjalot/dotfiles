syntax on
set et
set sw=4
set tabstop=4
set smarttab
set noautoindent
set number

autocmd Filetype javascript setlocal ts=2 sts=2 sw=2

"makes underscore separate words (so w stops on underscore)
set iskeyword-=_
"makes copy and paste work with system clipboard, yy, p etc
set clipboard=unnamed

call pathogen#infect()

"set nocompatible " Disable vi-compatibility
set laststatus=2 " Always show the statusline

au FileType python source ~/.vim/python.vim
set mouse=a
filetype plugin on
filetype indent on
let g:gtex_flavor='latex'
set guicursor=o:hor5

"au BufNewFile,BufRead *.cu   setf cu
"au fileType cu source cpp.vim

au BufNewFile,BufRead *.cl set filetype=cpp
au FileType c,cl,cpp source ~/.vim/opencl.vim

"CoffeeScript
au BufWritePost *.coffee silent CoffeeMake! -b | cwindow 5 | redraw!

"JS
au FileType js,coffee,node set cindent


"turn off stupid imap <C-j> hogging
"imap <C-space> <Plug>IMAP_JumpForward
"remap pageup/down to safer keys
noremap <C-J> <PageDown>
noremap <C-k> <PageUp>


"use relative line numbers
set relativenumber
set undofile

"fix up searching
nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
"set gdefault
"set incsearch
"set showmatch
set hlsearch

"colorscheme tir_black
"colorscheme desert256
"set background=dark
"hi IndentGuidesEven ctermbg=darkgrey 
"hi IndentGuidesOdd  ctermbg=black 
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1

"---------------------
"" Settings for Fortran
"---------------------
""
let fortran_have_tabs=1
let fortran_more_precise=1
let fortran_do_enddo=1
"   to instruct the syntax script to define fold regions for program units,
"   that
"   "   is main programs starting with a program statement, subroutines,
"   function
"   "   subprograms, block data subprograms, interface blocks, and modules.
"   " :let fortran_fold=1
"   "
"   "   fold regions will also be defined for do loops, if blocks, and select
"   "   case constructs.
"   " :let fortran_fold_conditionals=1
"   " :let fortran_fold_multilinecomments=1
let fortran_dialect='f95'
let fortran_free_source=1


