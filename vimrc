set nocompatible

set modeline
syntax on
" Remove = from filename characters (when using gf)
set isfname-==
" Remap 'q' to quit vim
" Disables the macro recording
nnoremap q :q<CR>

" swp files are annoying. Let's hope vim doesn't crash
set nobackup
set nowritebackup
set noswapfile

" Use system clipboard for copy/paste
set clipboard=unnamedplus

" Enhance wildmenu for command-line completion
set wildmenu
set wildmode=longest:full,full

" searching
set showmatch
set incsearch
set hlsearch

" make searches case-sensitive only if they contain upper-case characters
set ignorecase smartcase

" indenting
filetype plugin indent on
set autoindent
" On pressing tab, insert 4 spaces
set expandtab
" show existing tab with 4 spaces width
set tabstop=4
set softtabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
"replace <TAB> with spaces
set expandtab


" backspace over autoindentation, line breaks and start of insert mode
set backspace=indent,eol,start

set pastetoggle=<F5>

function! <SID>StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfun


autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()

function TrimEndLines()
    let save_cursor = getpos(".")
    :silent! %s#\($\n\s*\)\+\%$##
    call setpos('.', save_cursor)
endfunction

au BufWritePre * call TrimEndLines()

if has("autocmd")
        augroup Git
                au!
                au BufRead COMMIT_EDITMSG normal 1G
                au BufRead COMMIT_EDITMSG set tw=72
        augroup END
endif

" map <Home> to move to first word in line
" if at first word, move to beginning of line
nnoremap <silent> <Home> :call SmartHome("n")<CR>
inoremap <silent> <Home> <C-O>:call SmartHome("i")<CR>
vnoremap <silent> <Home> <Esc>:call SmartHome("v")<CR>
function! SmartHome(mode)
  if strpart(getline('.'), -1, col('.')) =~ '^\s\+$'
    normal! 0
  else
    normal! ^
  endif
  if a:mode == "v"
    normal! msgv`s
  endif
endfun

" vundle
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" plugins

call vundle#end()            " required
filetype plugin indent on    " required

" jump to the last position when reopening a file
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\""|exe "normal! zz" | endif
