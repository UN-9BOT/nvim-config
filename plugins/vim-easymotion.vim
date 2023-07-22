" easy motion --
map  s :TroubleClose<cr><Plug>(easymotion-bd-f)
nmap s :TroubleClose<cr><Plug>(easymotion-overwin-f)
nmap ,s :TroubleClose<cr><Plug>(easymotion-overwin-f2)
map  ,w :TroubleClose<cr><Plug>(easymotion-bd-w)
nmap ,w :TroubleClose<cr><Plug>(easymotion-overwin-w)
map ,l <Plug>(easymotion-lineforward)
map ,j <Plug>(easymotion-j)
map ,k <Plug>(easymotion-k)
map ,h <Plug>(easymotion-linebackward)
"let g:EasyMotion_smartcase = 1


" для устранения бага с буфером ale
" function! CloseALEList()
"     if (exists(":ALEClose"))
"         ALEClose
"     endif
"     if (exists(":ccl"))
"         ccl
"     endif
"     if (exists(":lcl"))
"         lcl
"     endif
" endfunction


