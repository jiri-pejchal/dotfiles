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

if has("autocmd")
        augroup Git
                au!
                au BufRead COMMIT_EDITMSG normal 1G
                au BufRead COMMIT_EDITMSG set tw=72
        augroup END
endif

