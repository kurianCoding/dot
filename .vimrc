" PACKAGE MANAGER
execute pathogen#infect()
syntax on
filetype plugin indent on

" LINE NUMBER
set number
set numberwidth=3
set relativenumber
set cursorline
set cc=80

" COLOR SCHEMES
"colorscheme takodachi
colorscheme one
"set background=light
"colorscheme molokai-dark
"colorscheme molokai
"colorscheme wombat
"highlight EndOfBuffer ctermfg=black ctermbg=black

set mouse=a "allow mouse

" MAPLEADER AND CUSTOM SHORTCUTS
inoremap ff <Esc>
let mapleader=";"
nnoremap <Leader>q :q!<Enter>
vnoremap <Leader>c :q!<Enter>
nnoremap <Leader>w :w<Enter>
nnoremap <Leader>x :wq<Enter>
nnoremap <Leader>a :GoReferrers<Enter>
nnoremap <Leader>s :GoImports <Enter>

" NERDTREE SETTING
nnoremap <Leader>g :NERDTreeToggle<Enter> 
nnoremap <Leader>t :TagbarToggle<Enter> 

" NAVIGATION
nnoremap <C-l> <C-w>l
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k

" FILE SEARCHING
nnoremap <Leader>f :CtrlP ..<Enter>

" CLANG FORMAT options set
let g:clang_format#style_options = {
            \ "AccessModifierOffset" : -4,
            \ "AllowShortIfStatementsOnASingleLine" : "true",
            \ "AlwaysBreakTemplateDeclarations" : "true",
            \ "Standard" : "C++11"}

" AUTO plugins for filetypes
autocmd FileType c,cpp ClangFormatAutoEnable
autocmd BufWritePre *.go GoImports
