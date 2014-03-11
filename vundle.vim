" git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
set nocompatible " be iMproved
filetype off " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle, required
Bundle 'gmarik/vundle'
Bundle 'chase/vim-ansible-yaml'
Bundle 'tpope/vim-fugitive'
Bundle 'bash-support.vim'
