execute pathogen#infect()

filetype on
syntax on
colorscheme monokai
set lines=35 columns=130
set colorcolumn=130
set number
set hidden
set history=100
filetype indent on
set nowrap
set tabstop=2
set shiftwidth=2
set expandtab
set smartindent
set autoindent
set hlsearch
set showmatch
let mapleader=" "
:let maplocalleader = " "
map <leader>s :source ~/.vimrc<CR>
" REQUIRED. This makes vim invoke Latex-Suite when you open a tex file.
filetype plugin on

" IMPORTANT: win32 users will need to have 'shellslash' set so that latex
" can be called correctly.
" set shellslash

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'

set laststatus=2
" autocmd vimenter * NERDTree
map <C-t> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
set cursorline
set wrap
" Change default target to pdf, if not dvi is used
" let g:Tex_DefaultTargetFormat = 'pdf'
 
" Setup the compile rule for pdf to use pdflatex with synctex enabled
" let g:Tex_CompileRule_pdf = 'pdflatex -synctex=1 --interaction=nonstopmode $*' 
 
" PDF display rule
" let g:Tex_ViewRule_pdf = 'open -a Skim %:r.pdf'
 
" map ,ll <leader>ll
 
" ,ls to forward search
" map ,ls :w<CR>:silent !/Applications/Skim.app/Contents/SharedSupport/displayline -r <C-r>=line('.')<CR> %<.pdf %<CR><CR>
 
" ,lv to display pdf 
" map ,lv <leader>lv
"
"
" let g:vimtex_view_general_viewer = '/Applications/Skim.app/Contents/SharedSupport/displayline'
" let g:vimtex_view_general_options = '-r @line @pdf @tex'
" let g:vimtex_fold_enabled = 0 "So large files can open more easily

let g:vimtex_view_method = 'skim'
let g:vimtex_compiler_latexmk = {'continuous' : 0}
let g:vintex_complete_enabled = '1'
let g:vimtex_complete_close_braces = '1'
let g:vimtex_complete_recursive_bib = '1'
let g:vimtex_toc_enabled = '1'
set breakindent
" setlocal wrap linebreak nolist
" set virtualedit=
" setlocal display+=lastline
" noremap  <buffer> <silent> <Up>   gk
" noremap  <buffer> <silent> <Down> gj
" noremap  <buffer> <silent> <Home> g<Home>
" noremap  <buffer> <silent> <End>  g<End>
" inoremap <buffer> <silent> <Up>   <C-o>gk
" inoremap <buffer> <silent> <Down> <C-o>gj
" inoremap <buffer> <silent> <Home> <C-o>g<Home>
" inoremap <buffer> <silent> <End>  <C-o>g<End>
