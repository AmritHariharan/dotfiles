call pathogen#infect()
" TODO: Add folding

" UI
syntax on
set mouse=a			" Use the mouse
set number			" Show line numbers
set ruler			" Show current position
set autoindent		" Automatically indent
set copyindent		" Copy previous indentation on autoindent
set wildmenu		" Visual autocomplete for command menu
set lazyredraw		" Only redraw when necessary
set showmatch		" Show highlight matching for [{()}]
set scrolloff=5		" Keep 5 lines above/below cursor

" FILES
set noswapfile
filetype plugin indent on

" TABBING
set smarttab		" Smart tabbing
set shiftwidth=4	" No 8 char tabs pls
set softtabstop=4	" # of spaces in tab when editing
set tabstop=4		" # of visual spaces / tab 

" SEARCHING
set ignorecase		" Case insensitive matching
set smartcase		" Smart case matching
set incsearch		" Incremental search
set hlsearch		" Highlight search

" SPLITS
set splitbelow
set splitright

" KEY REMAPPING

" I don't like hitting shift all the time
nnoremap : ;
nnoremap ; :

" Map <Space> to / (search) and Ctrl-<Space> to ? (backwards search)
map <space> /
map <c-space> ?

" Move to beginning/end of file
nnoremap B ^
nnoremap E $

" $/^ doesn't do anything
nnoremap $ <nop>
nnoremap ^ <nop>
