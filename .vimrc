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
" commented out when using Goyo, does not work well with that
"autocmd InsertEnter * :set norelativenumber
"autocmd InsertLeave * :set relativenumber

"set textwidth=120       " break lines when line length increases - This is a bit annoying

" Tabs
set tabstop=4           " use 4 spaces to represent tab
set softtabstop=4 expandtab
set shiftwidth=4        " number of spaces to use for auto indent
set autoindent          " copy indent from current line when starting a new line
set smarttab

set splitright

" Folding
set foldmethod=syntax
set foldlevelstart=99	" start the file folded - not sure if this works

" Better completion
set wildmenu			" enhanced tab completion when opening files
set wildmode=longest:full,full

let g:ctrlp_working_path_mode = 'cr'

" Ignore dirs in crtlp and wildmenu
set wildignore+=*/libs/*,*/node_modules/*,*/build/*,*.so,*.swp,*.zip
set wildignore+=*.mp4,*.zip,*.pdf
set wildignore+=*.class,*.o
set wildignore+=*.aux

" For specialization project
set wildignore+=*/example/*,*/ntnuthesis/*

" make backspaces more powerfull
set backspace=indent,eol,start

set ruler                           " show line and column number

" easier buffer switching
map <Leader>n :bn<cr>
map <Leader>p :bp<cr>
map <Leader>d :bn\|bd #<cr> 
map <Leader>b :ls<CR>:b<Space>

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

" Goyo
let g:goyo_width=100
"let g:goyo_linenr=1

" Limelight with Goyo
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!

let g:limelight_paragraph_span = 2
