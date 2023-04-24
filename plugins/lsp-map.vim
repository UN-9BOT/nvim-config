"for LSP server
imap <c-space> <Plug>(asyncomplete_force_refresh)
nmap <F8> :w<cr>:!autopep8 % -a --in-place<cr><cr>
nmap <F4> :w<cr>:ALEFix<CR>
nmap  gd <plug>(lsp-definition)
nmap  gs <plug>(lsp-document-symbol-search)
nmap  gr <plug>(lsp-references)
nmap  gt <plug>(lsp-type-definition)
nmap  <leader>rn <plug>(lsp-rename)
nmap  [g <plug>(ale_previous_wrap)
nmap  ]g <plug>(ale_next_wrap)
nmap <silent>  <c-k> <plug>(lsp-hover)
nmap <silent>  <c-j> :ALEPopulateLocList<CR>
" nnoremap <silent> <c-j> :call ToggleALELocList()<CR>

" function! ToggleALELocList()
"     " проверяем, открыт ли список ошибок ALE
"     let ale_list_open = bufwinnr('ALE') != -1

"     " закрываем список ошибок ALE, если он открыт
"     if ale_list_open
"         ALEClose
"     endif

"     " переключаемся на следующий список ошибок
"     if exists(":ALENext")
"         ALENext
"     elseif exists(":cnext")
"         cnext
"     elseif exists(":lnext")
"         lnext
"     endif

"     " если список ошибок ALE не открыт, открываем его
"     if !ale_list_open
"         ALEPopulateLocList
"     endif
" endfunction



let g:ale_virtualtext_cursor = 'current'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
" let g:ale_linters = {'python': ['ruff', 'pycodestyle', 'pydocstyle', 'flake8', 'bandit', 'mypy', 'pyright'], 'c': ['clangd']}
let g:ale_linters = {'python': ['ruff', 'pydocstyle', 'flake8', 'bandit', 'mypy', 'prospector', 'pylint'], 'c': ['clangd', 'cppcheck', 'clangtidy'], 'html': ['vscode-html-languageserver', 'tidy'], 'htmldjango': ['vscode-html-languageserver', 'tidy']}
let g:ale_fixers = {'python': ['black'], 'c': ['astyle'], 'htmldjango': ['html-beautify'], 'html': ['html-beautify']}
let g:airline#extensions#ale#enabled = 1

let g:ale_lint_delay = 1000






