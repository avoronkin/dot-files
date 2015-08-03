set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
""""""""""""""""""""""""""""""""""""""""
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'Shougo/vimproc.vim'
Plugin 'Shougo/neomru.vim'
Plugin 'Shougo/unite.vim'
Plugin 'haya14busa/incsearch.vim'

Plugin 'scrooloose/syntastic'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'pangloss/vim-javascript'
Plugin 'digitaltoad/vim-jade'
Plugin 'groenewege/vim-less'
Plugin 'tpope/vim-haml'
Plugin 'Lokaltog/vim-distinguished'
Plugin 'altercation/vim-colors-solarized'
Plugin 'bling/vim-airline'

Plugin 'Lokaltog/vim-easymotion'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'terryma/vim-expand-region'
Plugin 'terryma/vim-smooth-scroll'
Plugin 'vim-scripts/sudo.vim'
Plugin 'tpope/vim-surround'
Plugin 'Raimondi/delimitMate'
Plugin 'millermedeiros/vim-esformatter'
"Plugin 'airblade/vim-gitgutter'
Plugin 'mattn/emmet-vim'
Plugin 'MattesGroeger/vim-bookmarks'
Plugin 'diepm/vim-rest-console'
Plugin 'gelguy/Cmd2.vim'

"Plugin 'Valloric/YouCompleteMe'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

"Plugin 'Shougo/neocomplete.vim'
"Plugin 'Shougo/neosnippet'
"Plugin 'Shougo/neosnippet-snippets'
"""""""""""""""""""""""""""""""""""""""""
call vundle#end()            " required
filetype plugin indent on    " require
