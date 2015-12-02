set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
""""""""""""""""""""""""""""""""""""""""
"Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'haya14busa/incsearch.vim'
Plugin 'haya14busa/incsearch-fuzzy.vim'
Plugin 'christoomey/vim-tmux-navigator'

Plugin 'scrooloose/syntastic'
Plugin 'millermedeiros/vim-esformatter'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'pangloss/vim-javascript'
Plugin 'digitaltoad/vim-jade'
Plugin 'groenewege/vim-less'
Plugin 'tpope/vim-haml'
Plugin 'Lokaltog/vim-distinguished'
Plugin 'bling/vim-airline'
Plugin 'sjl/gundo.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'FelikZ/ctrlp-py-matcher'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'terryma/vim-expand-region'
Plugin 'terryma/vim-smooth-scroll'
Plugin 'vim-scripts/sudo.vim'
Plugin 'tpope/vim-surround'
Plugin 'Raimondi/delimitMate'
"Plugin 'airblade/vim-gitgutter'
Plugin 'MattesGroeger/vim-bookmarks'
"""""""""""""""""""""""""""""""""""""""""
call vundle#end()            " required
filetype plugin indent on    " require
