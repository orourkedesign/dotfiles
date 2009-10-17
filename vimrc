" Display
syntax on
colorscheme ir_black
set background=dark
set ruler
set showcmd
set laststatus=2
set cursorline 

" Navigation
set showmatch
set matchtime=2
set incsearch
set ignorecase
set smartcase
set nohls
 
" Formatting
set autoindent
set preserveindent
set smartindent
set smarttab
set expandtab
set textwidth=78
set tabstop=4
set softtabstop=4
set shiftwidth=4
set formatoptions=tcroqn2 
set lbr
 
" Behavior
set foldmethod=indent
set nofoldenable
set shellcmdflag=-c
set shell=zsh\ -l
set modeline
set modelines=5
set splitright
set scrolloff=3
set nomore
set wildmenu
set wildmode=list:longest
set backspace=indent,eol,start
set tabpagemax=100
set switchbuf=usetab
set history=5000
set shortmess=atI
set visualbell
set sessionoptions=blank,buffers,curdir,folds,help,resize,tabpages,winsize

set listchars=trail:.,tab:>-,eol:$
set nolist

noremap <leader>i :set list!<CR>

" Jump to last known location in file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal g'\"" | endif
endif
 
" Filetype based indent rules
if has("autocmd")
  filetype indent plugin on
endif
 
"
" Settings for specific versions of Vim
"
 
if has("gui_macvim")
    set transparency=10
    set guifont=Menlo:h11
    set lines=60
    set formatoptions-=t
    set formatoptions-=c
    nmap <C-up> <C-y>
    imap <C-up> <C-o><C-y>
    nmap <C-down> <C-e>
    imap <C-down> <C-o><C-e>
endif
 
autocmd FileType ruby setlocal tabstop=2 softtabstop=2 shiftwidth=2 foldmethod=syntax
autocmd FileType mkd setlocal ai comments=n:>
autocmd BufRead *.rst setlocal filetype=rest
autocmd FileType rest setlocal ai comments=n:>
autocmd FileType yaml setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd BufRead /etc/apache2/*,/etc/httpd/* setlocal filetype=apache
 
let mapleader = "," 

map <up> gk
inoremap <up> <C-R>=pumvisible() ? "\<lt>up>" : "\<lt>C-o>gk"<Enter>
map <down> gj
inoremap <down> <C-R>=pumvisible() ? "\<lt>down>" : "\<lt>C-o>gj"<Enter>
 
nmap <C-N> :noh<CR>
nmap <S-Enter> O<ESC>
nmap <Enter> o<Esc>
map <leader>f FuzzyFinderTextMate<CR>
map <leader>b FuzzyFinderBuffer<CR>
imap jj <Esc>
imap uu _
imap hh =>
imap aa @

noremap <leader>n :NERDTreeToggle<CR>
let NERDTreeHijackNetrw=1

" Default to tree view 
let g:netrw_liststyle = 3
" Hide common hidden files
let g:netrw_list_hide = '.*\.py[co]$,\.git$,\.swp$'
 
function! NextLineIsOnly(char)
    return getline(line(".")+1) =~ "^" . a:char . "\\+$"
endf
 
function! ReplaceNextLineWith(char)
    return "yyjVpVr" . a:char
endf
 
function! ReplaceSurroundingsWith(char)
    return ReplaceNextLineWith(a:char) . "yykkVp"
endf
 
function! AppendLineOf(char)
    return "yypVr" . a:char
endf
 
function! SurroundWith(char)
    return AppendLineOf(a:char) . "yykP"
endf
 
function! H1()
    let char = "="
    if NextLineIsOnly(char)
        return ReplaceSurroundingsWith(char)
    else
        return SurroundWith(char)
    endif
endf
 
function! H(char)
    if NextLineIsOnly(a:char)
        return ReplaceNextLineWith(a:char)
    else
        return AppendLineOf(a:char)
    endif
endf
 
nnoremap <expr> <F1> H1()
nnoremap <expr> <F2> H("=")
nnoremap <expr> <F3> H("-")

