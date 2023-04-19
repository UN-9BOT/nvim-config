" lazygit (no plugin, but with Floaterm)
nnoremap   <silent>   <F5>   :FloatermNew --height=0.9 --width=0.9 --wintype=float --name=floaterm1 --autoclose=2 lazygit<CR>


" for move in windows
nnoremap <silent> <a-h> <C-w>h
nnoremap <silent> <a-j> <C-w>j
nnoremap <silent> <a-k> <C-w>k
nnoremap <silent> <a-l> <C-w>l

" for move in buffers
nmap <silent> <a-.> :bnext<cr>
nmap <silent> <a-,> :bprevious<cr>

" add void line
nmap ,o m`o<Esc>``
nmap ,O m`O<Esc>``

"move in insert mode
inoremap <silent> <c-h> <esc>i
inoremap <silent> <c-j> <esc>ja
inoremap <silent> <c-k> <esc>ka
inoremap <silent> <c-l> <esc>la

"  another esc
inoremap <silent> ;j <esc>:noh<CR>:w<cr>
nnoremap <silent> ;j <esc>:noh<CR>:w<cr>

" only write
nmap <F2> :w<CR>

" tagbar
nmap <F3> :Vista<CR>

" compile with gcc
" for system buffer paste and copy
nmap <C-S-v> "+p
vmap <C-S-c> "+y
"
"copy all text in system buffer
nmap <F6> gg<S-v>G"+y

" open explorer
nmap <C-t> :NERDTreeToggle<CR>
nmap <leader>] :NERDTreeFocus<CR>

" for associatee in comand line vim
cnoreabbrev W w

" for fast move
nmap <s-j> 10jzz
nmap <s-k> 10kzz
