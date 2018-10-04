" TODO: Add folding

let mapleader = ","

"" PLUGINS
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'majutsushi/tagbar'
Plug 'vim-airline/vim-airline'
Plug 'airblade/vim-gitgutter'
Plug 'plasticboy/vim-markdown'
Plug 'tpope/vim-surround'
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-commentary'

call plug#end()

"" UI
syntax on
set nocompatible
set mouse=a			" Use the mouse
set number			" Show line numbers
set relativenumber  " Show relative line numbers
set ruler			" Show current position
set autoindent		" Automatically indent
set copyindent		" Copy previous indentation on autoindent
set wildmenu		" Visual autocomplete for command menu
set cursorline		" Have a line under the cursor position
set lazyredraw		" Only redraw when necessary
set showmatch		" Show highlight matching for [{()}]
set scrolloff=5		" Keep 5 lines above/below cursor
"set colorcolumn=80	" Draw a red line at 80 chars for line length
set noerrorbells	" Don't be annoying pls
set novisualbell	" Don't be annoying pls

"" FILES
set noswapfile
filetype plugin indent on

"" TABBING
set smarttab		" Smart tabbing
set shiftwidth=4	" No 8 char tabs pls
set softtabstop=4	" # of spaces in tab when editing
set tabstop=4		" # of visual spaces / tab 

"" SEARCHING
set ignorecase		" Case insensitive matching
set smartcase		" Smart case matching
set incsearch		" Incremental search
set hlsearch		" Highlight search

"" SPLITS
set splitbelow
set splitright

"" KEY REMAPPING

" Make moving between splits one gesture instead of two
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" I don't like hitting shift all the time
nnoremap ; :

" Map <Space> to / (search) and Ctrl-<Space> to ? (backwards search)
map <space> /
map <c-space> ?

" Move to beginning/end of line
nnoremap B ^
nnoremap E $

" $/^ doesn't do anything
nnoremap $ <nop>
nnoremap ^ <nop>

"" BUILDING
" Using Makefiles
nnoremap <leader>m :!make
nnoremap <leader>mt :!make %:t:r
" ^^^ :t gets just the filename and :r removes the extension
nnoremap <leader>mc :!make clean

"" Compiling Latex
nnoremap <leader>pdf :!pdflatex % && rm *.aux *.log &&open %:t:r.pdf

"" SHORTCUTS FOR PLUGINS

"" Nerdtree
nmap <C-n> ;NERDTreeToggle<CR>

"" Tagbar
nmap <C-t> ;TagbarToggle<CR>

"" GitGutter
let g:gitgutter_sign_added='┃'
let g:gitgutter_sign_modified='┃'
let g:gitgutter_sign_removed='◢'
let g:gitgutter_sign_removed_first_line='◥'
let g:gitgutter_sign_modified_removed='◢'

"" vim-markdown
let g:vim_markdown_folding_disabled = 1
