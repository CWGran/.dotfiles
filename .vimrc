" pathogen
execute pathogen#infect()

" set leader
let mapleader="\<Space>"
" Theme and appearance
syntax on
colorscheme mayansmoke
:colo mayansmoke

set number
set relativenumber

set showcmd

" Keep buffers loaded
set hidden

" relative line numbers in normal mode, normal line numbers in insert mode
autocmd InsertEnter * :set norelativenumber
autocmd InsertLeave * :set relativenumber

"set textwidth=120       " break lines when line length increases - This is a bit annoying

" Tabs
set tabstop=2           " use 4 spaces to represent tab
set softtabstop=2 expandtab
set shiftwidth=2        " number of spaces to use for auto indent
set autoindent          " copy indent from current line when starting a new line

set splitright

" Folding
set foldmethod=syntax
set foldlevelstart=99	" start the file folded - not sure if this works

" Better completion
set wildmenu			" enhanced tab completion when opening files
set wildmode=longest:full,full

let g:ctrlp_working_path_mode = 'cr'

" Ignore dirs in crtlp and wildmenu
set wildignore+=*/libs/*,*/node_modules/*,*.so,*.swp,*.zip
set wildignore+=*.mp4,*.zip,*.pdf
set wildignore+=*.class,*.o

" make backspaces more powerfull
set backspace=indent,eol,start

set ruler                           " show line and column number

" easier buffer switching
map <Leader>n :bn<cr>
map <Leader>p :bp<cr>
map <Leader>d :bn\|bd #<cr> 

" list
nnoremap    <F2> :<C-U>setlocal lcs=tab:>-,trail:-,eol:$ list! list? <CR>

" Change jk
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk

nnoremap gj j
nnoremap gk k
vnoremap gj j
vnoremap gk k
