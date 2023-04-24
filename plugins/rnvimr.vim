let g:rnvimr_enable_bw = 1
let g:rnvimr_enable_ex = 1
let g:rnvimr_enable_picker = 1
let g:rnvimr_shadow_winblend = 80
let g:rnvimr_vanilla = 1
let g:rnvimr_ranger_cmd = ['ranger', '--cmd=set draw_borders both']

nnoremap <silent> <space>r :RnvimrToggle<CR>
tnoremap <silent> <space>r <C-\><C-n>:RnvimrToggle<CR>
" let g:rnvimr_action = {
"             \ '<cr>': 'NvimEdit edit',
"             \ '<C-t>': 'NvimEdit tabedit',
"             \ '<C-x>': 'NvimEdit split',
"             \ '<C-v>': 'NvimEdit vsplit',
"             \ }
