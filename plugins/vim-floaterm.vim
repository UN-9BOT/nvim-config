" floating term
nnoremap   <silent>   <F12>   :w<CR>:let @+=expand('%')<CR>:FloatermToggle<CR>
tnoremap   <silent>   <F12>   <C-\><C-n>:FloatermToggle<CR>

" lazygit (no plugin, but with Floaterm)
nnoremap   <silent>   <F5>   :FloatermNew --height=0.9 --width=0.9 --wintype=float --name=floaterm1 --autoclose=2 lazygit<CR>
