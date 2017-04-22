"command Paste execute 'set noai | insert | set ai'			" Enables :Paste to just do what you want

"-------------- General
set number																								" Enable line numbers
syntax on																									" Enable syntax highlightning
set cursorline																						" Highlight current line
set tabstop=2																							" Make a tab two spaces wide
set ls=2																									" Always show status line
set ruler																									" Show the cursor position all the time
set backspace=indent,eol,start														" Make backspace work as you would except from other editors
let mapleader = ','																				" The default leader is \ - lets use comma instead
set paste																									" Remove crazy indentation after pasting stuff

"-------------- Visuals
colorscheme atom-dark-256
set t_CO=256																							" Use 256 colors


"-------------- Split Management

set splitbelow 																						" Always set split below
set splitright																						" Always set split to right

nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>

"--------------- Mappings

"Type ,ev to edit vimrc file
nmap <Leader>ev :tabedit $MYVIMRC<cr>

"Add simple search highlight removal
nmap <Leader><space> :nohlsearch<cr>

"-------------- Auto-commands

" Remove n+1 problem with augroup
augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %  										" Automatically source newly edited vimrc files
augroup END

"--------------- Searching
set hlsearch																							" Highlight all search matches
set incsearch
set ignorecase																						" Ignore case when searching


"--------------- Identation
filetype indent on
set smartindent
