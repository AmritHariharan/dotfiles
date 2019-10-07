" TODO: Add folding

let mapleader = ","

"" PLUGINS
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'majutsushi/tagbar'
Plug 'itchyny/lightline.vim'
Plug 'airblade/vim-gitgutter'
Plug 'plasticboy/vim-markdown'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

"" UI
syntax on
set nocompatible
set mouse=a			" Use the mouse
set number			" Show line numbers
" set relativenumber  " Show relative line numbers
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
set nofixendofline	" Don't add newlines to every file
filetype plugin indent on

"" TABBING
set smarttab		" Smart tabbing
set expandtab		" Spaces
set shiftwidth=2	" No 8 char tabs pls
set softtabstop=2	" # of spaces in tab when editing
set tabstop=2		" # of visual spaces / tab 

"" SEARCHING
set ignorecase		" Case insensitive matching
set smartcase		" Smart case matching
set incsearch		" Incremental search
set hlsearch		" Highlight search

"" SPLITS
set splitbelow
set splitright

"" KEY REMAPPING

" Copy to clipboard
noremap <Leader>y "*y

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

" Local variable rename
noremap gr gdva{:s///gc<left><left><left>

"" BUILDING
" Using Makefiles
nnoremap <leader>m :!make
nnoremap <leader>mf :!make %:t:r
" ^^^ :t gets just the filename and :r removes the extension
nnoremap <leader>mc :!make clean
nnoremap <leader>mt :!make test

"" Compiling Latex
nnoremap <leader>pdf :!pdflatex % && rm *.aux *.log &&open %:t:r.pdf

"" SHORTCUTS FOR PLUGINS

"" Ale
" let g:ale_sign_error = '⨉ '
" let g:ale_sign_warning = '? '
let g:airline#extensions#ale#enabled = 1
let g:ale_sign_column_always = 1
highlight clear ALEErrorSign
highlight clear ALEWarningSign
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
" Check Python files with flake8 and pylint.
let b:ale_linters = ['flake8']
" Fix Python files with autopep8 and yapf.
let b:ale_fixers = ['autopep8', 'yapf']

"" Deoplete
let g:deoplete#enable_at_startup = 1

"" Nerdtree
nmap <C-n> :NERDTreeToggle<CR>

"" Tagbar
nmap <C-t> :TagbarToggle<CR>

"" GitGutter
let g:gitgutter_sign_added='┃'
let g:gitgutter_sign_modified='┃'
let g:gitgutter_sign_removed='◢'
let g:gitgutter_sign_removed_first_line='◥'
let g:gitgutter_sign_modified_removed='◢'  

"" vim-markdown
let g:vim_markdown_folding_disabled = 1

"" Lightline
set laststatus=2

"" FZF
nnoremap f<CR> :FZF<CR>
nnoremap c<CR> :Commits<CR>
nnoremap t<CR> :Tags<CR>

