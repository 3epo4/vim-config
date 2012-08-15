" Use Vim setting, rather than Vi settings
set nocompatible

set encoding=utf8

call pathogen#infect()

" Switch syntax highlighting on according to the current value of the
" 'filetype' option:
syntax on

filetype plugin indent on

" ------------------------------------------------------------------
" Solarized Colorscheme Config
" ------------------------------------------------------------------

let g:solarized_italic=0    "default value is 1
let g:solarized_bold=0    "default value is 1
set background=dark
colorscheme solarized

if has("gui_running")
	if has("gui_win32")
		set guifont=Consolas:h10:cANSI 
	endif
endif

" Allow backspacing over everything in insert mode
set backspace=indent,eol,start

" Display an incomplete command in the lower right corner
set showcmd

set backupcopy=auto,breakhardlink

" Set number of screen lines to keep above and below the cursor.
set scrolloff=8

" Don't highlight search matches
set nohlsearch

" Display the match for the string while I'm still typing it
set incsearch

" Make vim quite
set visualbell

set hidden

set tabstop=2
set softtabstop=2
set shiftwidth=2
set autoindent
set expandtab

" Make command line two lines high
set cmdheight=2

" Set the status line
set statusline==%f\ %m\ %r%{fugitive#statusline()}\ Line:%l/%L[%p%%]\ Col:%v\ Buf:#%n\ [%b][0x%B] 

" tell VIM to always put a status line in, even if there is only one window
set laststatus=2

" Shortcut to rapidly toggle 'set list'
nmap ,l :set list!<CR>

" Use the same symbols as TextMate for tabstops end EOLs
set listchars=tab:▸\ ,eol:¬
						
nmap ,<C-h> :set hlsearch!<CR>
nmap ,e :split $MYVIMRC<CR><C-W>_
nmap ,s :source $MYVIMRC<CR>
nmap ,x :close<CR><ESC>
nmap ,Xj <C-W>j:close<CR>

" Don't use Ex mode, use Q for formatting
map Q gq

" ------------------------------------------------------------------
" NERDTree settings
" ------------------------------------------------------------------

nmap <F7> :NERDTreeToggle<CR>
let NERDTreeIgnore=['.swp', '.exe']
