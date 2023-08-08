let g:codeium_manual = v:false
let g:codeium_no_map_tab = v:true
" let g:codeium_disable_bindings = 1

inoremap <script><silent><nowait><expr> <a-p> codeium#Accept()
nnoremap <F10> :CodeiumDisable<cr>
" inoremap <c-p>   <Cmd>call codeium#CycleCompletions(1)<CR>
" inoremap <c-,>   <Cmd>call codeium#CycleCompletions(-1)<CR>
" inoremap <c-x>   <Cmd>call codeium#Clear()<CR>
