set nocompatible

syntax enable
syntax on
set t_Co=256
set background=dark
colorscheme distinguished

set encoding=utf8
set fileencoding=utf8
nnoremap <SPACE> <Nop>
let mapleader=' '               "Change leader to a comma because the backslash is too far away
set number                      "Line numbers are good
set backspace=indent,eol,start  "Allow backspace in insert mode
set history=1000                "Store lots of :cmdline history
set showcmd                     "Show incomplete cmds down the bottom
set showmode                    "Show current mode down the bottom
set visualbell                  "No sounds
set autoread                    "Reload files changed outside vim
set laststatus=2

set mouse=a

set ttimeoutlen=50
set list listchars=tab:>-,trail:·,eol:¶
set noswapfile

set nobackup
set nowb

silent !mkdir ~/.vim/backups > /dev/null 2>&1
set undodir=~/.vim/backups
set undofile

set autoindent
set smartindent
set smarttab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set expandtab

filetype plugin on
filetype indent on

set nowrap       "Don't wrap lines
set linebreak    "Wrap lines at convenient points
set cursorline

set wildmode=list:longest
set wildmenu                "enable ctrl-n and ctrl-p to scroll thru matches
set wildignore+=*vim/backups*
set wildignore+=*sass-cache*
set wildignore+=*DS_Store*
set wildignore+=*.png,*.jpg,*.gif

set scrolloff=8
set sidescrolloff=15
set sidescroll=1

let g:gundo_right = 1 

let g:syntastic_check_on_open=1
let g:syntastic_aggregate_errors=1
let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '!'
let g:syntastic_javascript_checkers = ['jshint', 'jscs']

autocmd BufWritePre *.js,*.jsx :Esformatter

let g:airline_detect_paste=1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = 'bubblegum'
let g:airline#extensions#tabline#show_buffers = 1
let g:airline_mode_map = {
      \ '__' : '-',
      \ 'n'  : 'N',
      \ 'i'  : 'I',
      \ 'R'  : 'R',
      \ 'c'  : 'C',
      \ 'v'  : 'V',
      \ 'V'  : 'V',
      \ '' : 'V',
      \ 's'  : 'S',
      \ 'S'  : 'S',
      \ '' : 'S',
      \ }

let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

let g:EasyMotion_smartcase = 1
let g:EasyMotion_startofline = 0 " keep cursor colum when JK motion

set hidden
autocmd BufWinLeave .* mkview
autocmd BufWinEnter .* silent loadview

let NERDTreeBookmarksFile=expand("$HOME/.vim/NERDTreeBookmarks")
    " Show the bookmarks table on startup
let NERDTreeShowBookmarks=1
let NERDTreeDirArrows=0
let NERDChristmasTree =1
let NERDTreeShowHidden=1 
let NERDTreeQuitOnOpen=1
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

" Save session automatically.
let g:unite_source_session_enable_auto_save = 1

" Use the fuzzy matcher for everything
call unite#filters#matcher_default#use(['matcher_fuzzy'])

" Use the rank sorter for everything
call unite#filters#sorter_default#use(['sorter_rank'])

let g:unite_source_history_yank_enable = 1

let g:unite_source_line_enable_highlight = 1
"if executable('ag')
    let g:unite_source_grep_command = 'ag'
    let g:unite_source_grep_default_opts =
          \ '--line-numbers --nocolor --nogroup --hidden --ignore ' .
          \  '''.hg'' --ignore ''.svn'' --ignore ''.git'' --ignore ' . 
          \ '''.bzr'' --ignore ''*vendor*'' --ignore ''node_modules'' '
    let g:unite_source_grep_recursive_opt = ''
"endif
"
" Set up some custom ignores
call unite#custom_source('file_rec,file_rec/async,file_mru,file,buffer,grep',
      \ 'ignore_pattern', join([
      \ '\.git/',
      \ 'tmp/',
      \ 'node_modules/',
      \ '*vendor*',
      \ 'bower_components/',
      \ '.sass-cache',
      \ ], '\|'))

let g:bookmark_save_per_working_dir = 1
let g:bookmark_auto_save = 1
let g:bookmark_manage_per_buffer = 1
