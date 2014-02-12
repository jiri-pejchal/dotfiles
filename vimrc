set modeline
syntax on
filetype on
set isfname-==
"replace <TAB> with spaces
set expandtab
noremap q :q<CR>

" swp files are annoying. Let's hope vim doesn't crash
set nobackup
set nowritebackup
set noswapfile

function! <SID>StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfun


autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()
