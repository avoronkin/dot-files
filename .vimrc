
set encoding=utf-8
" set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 10
" ====== Bundle ====== {{{ 

    " Filetype off is required by vundle
    filetype off
    set rtp+=~/.vim/bundle/vundle/
    call vundle#rc()

    " let Vundle manage Vundle (required)
    Bundle "gmarik/vundle"

    Bundle 'tpope/vim-commentary'
    Bundle 'scrooloose/syntastic'
    Bundle 'scrooloose/nerdtree'
     
    Bundle 'Shougo/vimproc.vim'
    Bundle 'Shougo/unite.vim'
    Bundle 'bling/vim-airline'

    Bundle 'tpope/vim-unimpaired'
    Bundle 'jelera/vim-javascript-syntax'
    Bundle 'pangloss/vim-javascript'
    Bundle 'sjl/gundo.vim' 
    Bundle 'Lokaltog/vim-easymotion' 
    Bundle 'mattn/emmet-vim'
    Bundle 'terryma/vim-multiple-cursors'
    Bundle 'Lokaltog/vim-distinguished'
    " Bundle 'vim-scripts/YankRing.vim'
    Bundle 'Raimondi/delimitMate'
    Bundle 'tpope/vim-fugitive'
    Bundle 'Valloric/YouCompleteMe'
    Bundle 'marijnh/tern_for_vim'
    Bundle 'jsx/jsx.vim'
    Bundle 'SirVer/ultisnips'


    "Filetype plugin indent on is required by vundle
    filetype plugin indent on

" ====== /Bundle ====== }}}

" ====== General Config ====== {{{ 

    set encoding=utf8
    set fileencoding=utf8
    set nocompatible                "Use Vim settings, rather then Vi settings (much better!).
    let mapleader=','               "Change leader to a comma because the backslash is too far away
    set number                      "Line numbers are good
    set backspace=indent,eol,start  "Allow backspace in insert mode
    set history=1000                "Store lots of :cmdline history
    set showcmd                     "Show incomplete cmds down the bottom
    set showmode                    "Show current mode down the bottom
    set visualbell                  "No sounds
    set autoread                    "Reload files changed outside vim
    set laststatus=2
"    set mouse=a

" ====== /General Config ====== }}}

" ====== Highlighting ======{{{

    set t_Co=256
    syntax on
    set background=dark
    map <silent> <leader>n :noh<cr>
    colorscheme distinguished
    let g:syntastic_check_on_open=1

    if !exists('g:airline_symbols')
        let g:airline_symbols = {}
    endif
     
    
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

    let g:airline_left_sep = ''
    let g:airline_left_alt_sep = ''
    let g:airline_right_sep = ''
    let g:airline_right_alt_sep = ''
    let g:airline_symbols.branch = ''
    let g:airline_symbols.readonly = ''
    let g:airline_symbols.linenr = ''


    " let g:airline_left_sep = ''
    " let g:airline_right_sep = ''
    " let g:airline_symbols.linenr = '¶'
    " let g:airline_symbols.branch = '⎇'
    " let g:airline_symbols.paste = 'ρ'
    " let g:airline_symbols.whitespace = 'Ξ'
    set ttimeoutlen=150

    " Display tabs and trailing spaces visually
    set list listchars=tab:>-,trail:·,eol:¶
    " Show Invisible Characters
    nmap <Leader><space> :set list!<CR>
" ====== /Highlighting ====== }}}

" ====== Swap Files ====== {{{

    set noswapfile
    set nobackup
    set nowb

" ====== /Swap Files ====== }}}

" ====== Undo ====== {{{

    " Keep undo history across sessions, by storing in file.
    silent !mkdir ~/.vim/backups > /dev/null 2>&1
    set undodir=~/.vim/backups
    set undofile
    nnoremap <F5> :GundoToggle<CR>
    let g:gundo_right = 1 
" ====== /Undo ====== }}}

" ====== Indentation ====== {{{

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

" ====== /Indentation ====== }}}

" ====== Folding ======= {{{

    " Toggle Foldings with the space bar 
    nnoremap <Space> za
    nnoremap <Leader>z zMzO

    set foldcolumn=1
    set foldmethod=indent
    set foldnestmax=3       

" ====== /Folding ======= }}}

" ====== Completion ====== {{{

    set wildmode=list:longest
    set wildmenu                "enable ctrl-n and ctrl-p to scroll thru matches
    set wildignore+=*vim/backups*
    set wildignore+=*sass-cache*
    set wildignore+=*DS_Store*
    set wildignore+=*.png,*.jpg,*.gif

    let g:ycm_add_preview_to_completeopt=0
    let g:ycm_confirm_extra_conf=0
    set completeopt-=preview

" ====== /Completion ====== }}}

" ====== Scrolling ====== {{{

    set scrolloff=8         "Start scrolling when we're 8 lines away from margins
    set sidescrolloff=15
    set sidescroll=1

" ====== /Scrolling ====== }}}

" ====== Editing ====== {{{

    imap <up> <nop>
    imap <down> <nop>
    imap <left> <nop>
    imap <right> <nop>

    " Select All
    map <C-A> ggVG

    " Insert blank lines without going into Insert mode
    nmap t o<ESC>k
    nmap T O<ESC>j

    nmap <C-Up> [e
    nmap <C-Down> ]e
    " Bubble multiple lines
    vmap <C-Up> [egv
    vmap <C-Down> ]egv

    " let g:EasyMotion_leader_key = '<Leader>'
    " let g:EasyMotion_mapping_f ='<Leader>l'
    " let g:EasyMotion_mapping_F ='<Leader>h'

    
    
" ====== /Editing ====== }}}

" ====== Formating ====== {{{

    nnoremap <leader>r :%!js-beautify -j -q -f <CR>

" ====== /Formating ====== }}}

" ====== Buffers ===== {{{

    set hidden
    autocmd BufWinLeave .* mkview
    autocmd BufWinEnter .* silent loadview
    nnoremap <silent> <Left>   :bp<CR>
    nnoremap <silent> <Right>  :bn<CR>
" ====== /Buffers ====== }}}

" ====== Tabs ======{{{
    map <A-Left> :tabp<CR>
    map <A-Right> :tabn<CR>


" ====== /Tabs ======}}}

" ====== NERDTree ====== {{{

    " map <silent> <f4> :NERDTreeToggle<CR>
    map <silent> <f4> :let NERDTreeQuitOnOpen = 1<bar>NERDTreeToggle<CR>
    map <silent> <f3> :let NERDTreeQuitOnOpen = 0<bar>NERDTreeToggle<CR>
    nmap <leader>nt :NERDTreeFind<CR>
    " Store the bookmarks file
    let NERDTreeBookmarksFile=expand("$HOME/.vim/NERDTreeBookmarks")
    " Show the bookmarks table on startup
    let NERDTreeShowBookmarks=1
    let NERDTreeDirArrows=0
    let NERDChristmasTree =1
    let NERDTreeShowHidden=1 
    let NERDTreeQuitOnOpen=1
    autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
" ====== /NERDTree ====== }}}

" ====== Emmet ====== {{{

    let g:user_emmet_install_global = 0
    autocmd FileType html,css EmmetInstall
    "imap ,, <C-y>,

" ====== /Emmet ====== }}}

" ====== Tmux ====== {{{

    if exists('$TMUX')
        function! TmuxOrSplitSwitch(wincmd, tmuxdir)
            let previous_winnr = winnr()
            silent! execute "wincmd " . a:wincmd
            if previous_winnr == winnr()
                call system("tmux select-pane -" . a:tmuxdir)
                redraw!
            endif
        endfunction

        let previous_title = substitute(system("tmux display-message -p '#{pane_title}'"), '\n', '', '')
        let &t_ti = "\<Esc>]2;vim\<Esc>\\" . &t_ti
        let &t_te = "\<Esc>]2;" . previous_title . "\<Esc>\\" . &t_te

        nnoremap <silent> <C-h> :call TmuxOrSplitSwitch('h', 'L')<cr>
        nnoremap <silent> <C-j> :call TmuxOrSplitSwitch('j', 'D')<cr>
        nnoremap <silent> <C-k> :call TmuxOrSplitSwitch('k', 'U')<cr>
        nnoremap <silent> <C-l> :call TmuxOrSplitSwitch('l', 'R')<cr>
    else
        map <C-h> <C-w>h
        map <C-j> <C-w>j
        map <C-k> <C-w>k
        map <C-l> <C-w>l
    endif

" ====== /Tmux ====== }}}

" Shortcuts

" Change Working Directory to that of the current file
        cmap cwd lcd %:p:h
        cmap cd. lcd %:p:h"
" visual shifting (does not exit Visual mode)
        vnoremap < <gv
        vnoremap > >gv

" ======= Unite ====== {{{¶
nnoremap <Leader>f :Unite -start-insert file<CR>
nnoremap <Leader>ff :Unite -start-insert file_rec/async<CR>
nnoremap <Leader>fr :Unite file_mru<CR>
nnoremap <Leader>b :Unite -quick-match buffer<CR>
nnoremap <Leader>bb :Unite -start-insert buffer<CR>
nnoremap <Leader>g :Unite grep:.<CR>

let g:unite_split_rule = "botright"
let g:unite_source_history_yank_enable = 1
let g:unite_force_overwrite_statusline = 0
let g:unite_winheight = 10
" ======= /Unite ====== }}}¶
    map <silent> <f9> :YRShow<CR>
    set pastetoggle=<F7>

" set runtimepath+=~/.vim/ultisnips
" let g:UltiSnipsSnippetDirectories=["snippets"]

" let g:UltiSnipsExpandTrigger="<c-j>"
" "let g:UltiSnipsListSnippets="<c-tab>"
" let g:UltiSnipsJumpForwardTrigger="<c-j>"
" let g:UltiSnipsJumpBackwardTrigger="<c-k>"
