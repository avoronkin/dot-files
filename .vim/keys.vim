nnoremap <F5> :GundoToggle<CR>
set pastetoggle=<F2>

"don't use arrows iin insert mode
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

"Select All
map <C-A> ggVG

"Insert blank lines without going into Insert mode
nmap t o<ESC>k
nmap T O<ESC>j

"buble lines
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==
inoremap <C-j> <Esc>:m .+1<CR>==gi
inoremap <C-k> <Esc>:m .-2<CR>==gi
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv

nnoremap <silent> <Left>   :bp<CR>
nnoremap <silent> <Right>  :bn<CR>

map <A-Left> :tabp<CR>
map <A-Right> :tabn<CR>

" Change Working Directory to that of the current file
cmap cwd lcd %:p:h
cmap cd. lcd %:p:h"

" visual shifting (does not exit Visual mode)
vnoremap < <gv
vnoremap > >gv

map <silent> <leader>n :noh<cr>
nmap <Leader><space> :set list!<CR>

"Toggle comments with ctrl-/
map <C-_> <plug>NERDCommenterToggle

"map <silent> <f4> :let NERDTreeQuitOnOpen = 1<bar>NERDTreeToggle<CR>
"map <silent> <f3> :let NERDTreeQuitOnOpen = 0<bar>NERDTreeToggle<CR>

nmap s <Plug>(easymotion-s2)
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)

nmap <Leader>w <Plug>(easymotion-bd-w)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>l <Plug>(easymotion-lineforward)
map <Leader>h <Plug>(easymotion-linebackward)

map / <Plug>(incsearch-fuzzy-/)
map ? <Plug>(incsearch-fuzzy-?)
map g/ <Plug>(incsearch-fuzzy-stay)

"scroll
noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 0, 2)<CR>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 0, 2)<CR>
noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 0, 4)<CR>
noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 0, 4)<CR>

nnoremap <silent> <leader>es :Esformatter<CR>
vnoremap <silent> <leader>es :EsformatterVisual<CR>

nnoremap <leader>r :CtrlPMRU<cr>
nnoremap <leader>b :CtrlPBuffer<cr>
nnoremap <leader>; :CtrlPLine<cr>
nnoremap <leader>f :CtrlP<cr>
