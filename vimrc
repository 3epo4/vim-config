set nocompatible
			
call pathogen#infect()

" Switch syntax highlighting on according to the current value of the
" 'filetype' option:
syntax on

filetype plugin indent on

" ------------------------------------------------------------------
" Solarized Colorscheme Config
" ------------------------------------------------------------------

let g:solarized_italic=0    "default value is 1
set background=dark
colorscheme solarized

set backspace=indent,eol,start
set backupcopy=auto,breakhardlink
