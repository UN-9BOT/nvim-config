" backspace
inoremap <C-b> <C-\><C-o>db
inoremap <C-w> <C-\><C-o>dw

" for move in windows
nnoremap <silent> <a-h> <C-w>h
nnoremap <silent> <a-j> <C-w>j
nnoremap <silent> <a-k> <C-w>k
nnoremap <silent> <a-l> <C-w>l

" for move in buffers
nmap <silent> <a-.> :bnext<cr>
nmap <silent> <a-,> :bprevious<cr>

"move in insert mode
inoremap <silent> <c-h> <esc>i
inoremap <silent> <c-j> <esc>ja
inoremap <silent> <c-k> <esc>ka
inoremap <silent> <c-l> <esc>la

"  another esc
inoremap <silent> ;j <esc>:noh<CR>:w<cr>
nnoremap <silent> ;j <esc>:noh<CR>:w<cr>
inoremap <silent> жо <esc>:noh<CR>:w<cr>
nnoremap <silent> жо <esc>:noh<CR>:w<cr>

" for system buffer paste and copy
set clipboard=unnamedplus

"copy all text in system buffer
nmap <F6> gg<S-v>G"+y

" for associatee in comand line vim
cnoreabbrev W w

" for fast move with plugin vim-smooth-scroll
nnoremap <silent> <s-k> :call smooth_scroll#up(&scroll/2, 10, 2)<CR>
nnoremap <silent> <s-j> :call smooth_scroll#down(&scroll/2, 10, 2)<CR>
" nnoremap <silent> <s-k> {
" nnoremap <silent> <s-j> }
vnoremap <silent> <s-k> 5k
vnoremap <silent> <s-j> 5j
" nmap <s-j> 10jzz
" nmap <s-k> 10kzz
nnoremap ;l $
nnoremap ;h 0
vnoremap ;l $
vnoremap ;h 0

" для скобок
nnoremap ( ciw()<esc>Pb<esc>hi

" delete buffer
map <leader>d :TroubleClose<cr>:bd<CR>
