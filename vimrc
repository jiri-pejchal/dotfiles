set nocompatible
source ~/.vim/vundle.vim

set modeline
syntax on
filetype plugin indent on
set isfname-==
noremap q :q<CR>

" swp files are annoying. Let's hope vim doesn't crash
set nobackup
set nowritebackup
set noswapfile

" searching
set showmatch
set incsearch
set hlsearch

" make searches case-sensitive only if they contain upper-case characters
set ignorecase smartcase

" indenting
set smartindent
set tabstop=4
set shiftwidth=4
" make "tab" insert indents instead of tabs at the beginning of a line
set smarttab
"replace <TAB> with spaces
set expandtab

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

