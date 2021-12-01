filetype indent plugin on
:set number relativenumber
:set nu rnu

syntax on

"""
"   General
"""


set expandtab
set shiftwidth=4
set tabstop=4
set autoindent

set hidden
set wildmenu
set showcmd

set hlsearch
set ignorecase
set smartcase

set backspace=indent,eol,start
set list
set listchars=tab:▸\ ,trail:·

set nostartofline
set ruler
set laststatus

set confirm

set t_vb=

set mouse=a
set cmdheight=2

set number
set notimeout ttimeout ttimeoutlen=200

set scrolloff=8
set sidescrolloff=8


"""
"   Key Map
"""

let mapleader = ';'

map gf :edit <cfile><cr>

map Y y$

nnoremap <C-L> :nohl<CR><C-L>

noremap <leader>e :NERDTreeToggle<cr>
nnoremap <CR> :noh<CR><CR>
nnoremap <leader><Left> :tabprevious<CR>
nnoremap <leader><Right> :tabnext<CR>
noremap <leader>tn :tabnew<cr>


"""
"  Plugins
"""

let data_dir = has('nvim') ? stdpath('data') : '~/vim'

call plug#begin(data_dir . '/plugged')

Plug 'preservim/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'sheerun/vim-polyglot'
Plug 'sainnhe/everforest'
if has('nvim')
    Plug 'ludovicchabant/vim-gutentags'
endif
call plug#end()

set background=dark
let g:everforest_background = 'medium'
"let g:everforest_transparent_background = 1

colorscheme everforest


set termguicolors
