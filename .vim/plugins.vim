set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
""""""""""""""""""""""""""""""""""""""""
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'Shougo/vimproc.vim'
"Plugin 'Shougo/neomru.vim'
Plugin 'Shougo/unite.vim'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'pangloss/vim-javascript'
Plugin 'Lokaltog/vim-distinguished'
Plugin 'altercation/vim-colors-solarized'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'terryma/vim-expand-region'
Plugin 'terryma/vim-smooth-scroll'
Plugin 'tpope/vim-surround'
Plugin 'Raimondi/delimitMate'
Plugin 'SirVer/ultisnips'
Plugin 'bling/vim-airline'
"Plugin 'airblade/vim-gitgutter'
Plugin 'MattesGroeger/vim-bookmarks'

"""""""""""""""""""""""""""""""""""""""""
call vundle#end()            " required
filetype plugin indent on    " require
