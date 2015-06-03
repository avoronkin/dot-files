filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'Shougo/vimproc.vim', { 'do': 'make' }

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
"Plugin 'severin-lemaignan/vim-minimap'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " require
