nnoremap <silent> <F5> :LazyGit<CR>
nnoremap <silent> <leader>lcf :LazyGitFilterCurrentFile<CR>
nnoremap <silent> <leader>lcc :LazyGitFilter<CR>
if has('nvim') && executable('nvr')
  let $GIT_EDITOR = "nvr -cc split --remote-wait +'set bufhidden=wipe'"
endif
