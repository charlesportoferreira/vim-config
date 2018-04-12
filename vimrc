execute pathogen#infect()

filetype on
syntax on

colorscheme monokai
set termguicolors
let g:monokai_term_italic=1
" set t_Co=256

set number
set hidden
set history=100
filetype indent on
set tabstop=2
set shiftwidth=2
set expandtab
set smartindent
set autoindent
set hlsearch
set showmatch
let mapleader=" "
let maplocalleader = " "
map <leader>s :source ~/.vimrc<CR>
" REQUIRED. This makes vim invoke Latex-Suite when you open a tex file.
filetype plugin on


" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'

set laststatus=2
" autocmd vimenter * NERDTree
map <C-t> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
set cursorline " highlight line
" set cursorcolumn " highligth column
set wrap
let g:vimtex_view_method = 'skim'
let g:vimtex_compiler_latexmk = {'continuous' : 0}
let g:vintex_complete_enabled = '1'
let g:vimtex_complete_close_braces = '1'
let g:vimtex_complete_recursive_bib = '1'
let g:vimtex_toc_enabled = '1'
set breakindent
nnoremap <Up> gk
nnoremap <Down> gj
" the following setting will hide warnings such as the Overfull hbox
let g:vimtex_quickfix_open_on_warning = 0
" set spelllang=en
" set spell
