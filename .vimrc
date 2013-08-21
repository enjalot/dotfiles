syntax on
set et
set sw=2
set tabstop=2
set smarttab
set noautoindent
set number
set hidden

"folding
set foldmethod=indent   "fold based on indent
"set foldmethod=syntax   "fold based on syntax
"augroup vimrc
"  au BufReadPre * setlocal foldmethod=indent
"  au BufWinEnter * if &fdm == 'indent' | setlocal foldmethod=manual | endif
"augroup END
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set foldlevel=1         "this is just what i use

"show trailing whitespace
:highlight ExtraWhitespace ctermbg=red guibg=red
:match ExtraWhitespace /\s\+$/

autocmd Filetype javascript setlocal ts=2 sts=2 sw=2
autocmd Filetype python setlocal ts=4 sts=4 sw=4

"makes underscore separate words (so w stops on underscore)
set iskeyword-=_
"makes copy and paste work with system clipboard, yy, p etc
set clipboard=unnamed

call pathogen#infect()

"remap autocomplete cycling
"inoremap ` <C-n>

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
au BufWritePost *.coffee silent CoffeeMake! -b -p | cwindow 5 | redraw!

"JS
au FileType js,coffee,node set cindent

"STYLUS
au BufNewFile,BufRead *.styl set filetype=css
"LESS
au BufNewFile,BufRead *.less set filetype=css
"HANDLEBARS
au BufNewFile,BufRead *.handlebars set filetype=html


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
hi Search ctermbg=Blue

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



" https://github.com/gmarik/vundle
 set nocompatible               " be iMproved
 filetype off                   " required!

 set rtp+=~/.vim/bundle/vundle/
 call vundle#rc()

" let Vundle manage Vundle
" required!
 Bundle 'gmarik/vundle'

" My Bundles here:
 Bundle 'wakatime/vim-wakatime'

" original repos on github
"Bundle 'tpope/vim-fugitive'
"Bundle 'Lokaltog/vim-easymotion'
"Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
"Bundle 'tpope/vim-rails.git'
" vim-scripts repos
"Bundle 'L9'
"Bundle 'FuzzyFinder'
" non github repos
"Bundle 'git://git.wincent.com/command-t.git'
" git repos on your local machine (ie. when working on your own plugin)
"Bundle 'file:///Users/gmarik/path/to/plugin'
" ...

 filetype plugin indent on     " required!
