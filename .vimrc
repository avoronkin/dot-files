" ====== Bundle ====== {{{ 

    " Filetype off is required by vundle
    filetype off
    set rtp+=~/.vim/bundle/vundle/
    call vundle#rc()

    " let Vundle manage Vundle (required)
    Bundle "gmarik/vundle"

    Bundle 'jl/gundo.vim'
    Bundle 'scrooloose/syntastic'
    Bundle 'scrooloose/nerdtree'
    Bundle 'Shougo/vimproc.vim'¶
    Bundle 'Shougo/unite.vim'¶

    Bundle 'tpope/vim-unimpaired'
    Bundle 'jelera/vim-javascript-syntax'
    Bundle 'pangloss/vim-javascript'
    Bundle 'sjl/gundo.vim' 
    Bundle 'Lokaltog/vim-easymotion' 
    Bundle 'mattn/emmet-vim'

    Bundle 'terryma/vim-multiple-cursors'
    Bundle 'godlygeek/tabular'
    Bundle 'altercation/vim-colors-solarized'
    Bundle 'Lokaltog/vim-distinguished'
"   Bundle 'vim-scripts/YankRing.vim'
    Bundle 'Raimondi/delimitMate'
    Bundle 'tpope/vim-fugitive'
    Bundle 'Lokaltog/vim-easymotion'
    Bundle 'fholgado/minibufexpl.vim'
    Bundle 'Valloric/YouCompleteMe'
    Bundle 'marijnh/tern_for_vim'
    Bundle 'skammer/vim-css-color'
    Bundle 'hail2u/vim-css3-syntax'
    Bundle 'MarcWeber/vim-addon-mw-utils'
    Bundle 'tomtom/tlib_vim'
    Bundle 'garbas/vim-snipmate'
    Bundle "honza/vim-snippets"


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

" ====== /General Config ====== }}}

" ====== Highlighting ======{{{

    set t_Co=256
    syntax on
    set background=dark
    map <silent> <leader>n :noh<cr>
    colorscheme distinguished
    let g:syntastic_check_on_open=1

    " Show syntax highlighting groups for word under cursor
    nmap <C-S-L> :call <SID>SynStack()<CR>
    function! <SID>SynStack()
        if !exists("*synstack")
            return
        endif
        echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
    endfunc

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

    set foldmethod=syntax
    set foldnestmax=3       

    nmap <Leader>ff :call <SID>ToggleFold()<CR>
    function! s:ToggleFold()
        if &foldmethod == 'marker'
            let &l:foldmethod = 'syntax'
        else
            let &l:foldmethod = 'marker'
        endif
        echo 'foldmethod is now '.&l:foldmethod
    endfunction

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

    " Quickly edit/reload the vimrc file
    nmap <silent> <leader>ev :e $MYVIMRC<CR>
    nmap <silent> <leader>sv :so $MYVIMRC<CR>

    " Bubble single lines
    nmap <C-Up> [e
    nmap <C-Down> ]e
    " Bubble multiple lines
    vmap <C-Up> [egv
    vmap <C-Down> ]egv

    inoremap ;; <ESC>

"    nnoremap <silent> <F11> :YRShow<CR>

    let g:EasyMotion_leader_key = '<Leader>'
    let g:EasyMotion_mapping_f ='<Leader>l'
    let g:EasyMotion_mapping_F ='<Leader>h'

    
    imap <C-\> <Plug>snipMateNextOrTrigger
    smap <C-\> <Plug>snipMateNextOrTrigger
    
" ====== /Editing ====== }}}

" ====== Formating ====== {{{

    if exists(":Tabularize")
        nmap <Leader>a= :Tabularize /=<CR>
        vmap <Leader>a= :Tabularize /=<CR>
        nmap <Leader>a: :Tabularize /:\zs<CR>
        vmap <Leader>a: :Tabularize /:\zs<CR>
    endif

    nnoremap <leader>r :%!js-beautify -j -q -B -f -<CR>

" ====== /Formating ====== }}}

" ====== Buffers ===== {{{

    set hidden
    autocmd BufWinLeave .* mkview
    autocmd BufWinEnter .* silent loadview
    
    let g:ctrlp_custom_ignore = { 'dir':  '\v[\/]\.(git|hg|svn|tmp)$'}
    let g:ctrlp_working_path_mode = 'r'
    let g:ctrlp_mruf_exclude = '/tmp/.*\|/temp/.*'
    let g:ctrlp_mruf_relative = 0
    nnoremap <silent> <Left>   :bn<CR>
    nnoremap <silent> <Right>  :bp<CR>
    map <Leader>t :MBEToggle<cr> 
" ====== /Buffers ====== }}}

" ====== NERDTree ====== {{{

    map <silent> <f4> :NERDTreeToggle<CR>
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

" ======= Unite ====== {{{
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

" ======= /Unite ====== }}}

