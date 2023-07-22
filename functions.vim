" NOTE: make sessions ----
" function! MakeSession()
"   let b:sessiondir = $HOME . "/.vim/sessions" . getcwd()
"   if (filewritable(b:sessiondir) != 2)
"     exe 'silent !mkdir -p ' b:sessiondir
"     redraw!
"   endif
"   let b:filename = b:sessiondir . '/session.vim'
"   exe "mksession! " . b:filename
" endfunction

" function! LoadSession()
"   let b:sessiondir = $HOME . "/.vim/sessions" . getcwd()
"   let b:sessionfile = b:sessiondir . "/session.vim"
"   if (filereadable(b:sessionfile))
"     exe 'source ' b:sessionfile
"   else
"     echo "No session loaded."
"   endif
" endfunction

" if(argc() == 0)
"   au VimEnter * nested :call LoadSession()
" endif
" au VimLeave * :call MakeSession()
" END ---- make sessions ----




" NOTE: change laoyout keymap when leaving insert mode
" function! SetUsLayout()
"   silent !setxkbmap us,ru
" endfunction

" autocmd InsertLeave * call SetUsLayout()
" END ---- change layout ----
