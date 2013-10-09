set nocompatible               " be iMproved
 filetype off                   " required!

 set rtp+=~/.vim/bundle/vundle/
 call vundle#rc()

 " let Vundle manage Vundle
 " required! 
 Bundle 'gmarik/vundle'

 " My Bundles here:
Bundle 'Shougo/unite.vim'
nnoremap <space>s :Unite -quick-match buffer<cr>
nnoremap <C-p> :Unite file<cr>
nnoremap <space>/ :Unite grep:.<cr>

Bundle 'Lokaltog/vim-easymotion'
let g:EasyMotion_leader_key = '<Leader>'

Bundle 'terryma/vim-multiple-cursors'

Bundle 'scrooloose/nerdtree'
map <F3> :NERDTreeToggle<CR>

Bundle 'jelera/vim-javascript-syntax'
Bundle 'pangloss/vim-javascript'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'Raimondi/delimitMate'

Bundle 'scrooloose/syntastic'
let g:syntastic_check_on_open=1


Bundle 'Valloric/YouCompleteMe'

" These are the tweaks I apply to YCM's config, you don't need them but they might help.
" YCM gives you popups and splits by default that some people might not like, so these should tidy it up a bit for you.
let g:ycm_add_preview_to_completeopt=0
let g:ycm_confirm_extra_conf=0
set completeopt-=preview

Bundle 'marijnh/tern_for_vim'



 filetype plugin indent on     " required!
 "
 " Brief help
 " :BundleList          - list configured bundles
 " :BundleInstall(!)    - install(update) bundles
 " :BundleSearch(!) foo - search(or refresh cache first) for foo
 " :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
 "
 " see :h vundle for more details or wiki for FAQ
 " NOTE: comments after Bundle command are not allowed..
"++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
set nu
set hidden

nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>

set expandtab
set shiftwidth=4
set softtabstop=4
set list listchars=tab:>-,trail:·,eol:¶

set t_Co=256
syntax on
set background=dark
colorscheme distinguished
