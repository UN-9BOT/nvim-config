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


let g:ale_virtualtext_cursor = 'current'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
" let g:ale_linters = {'python': ['ruff', 'pycodestyle', 'pydocstyle', 'flake8', 'bandit', 'mypy', 'pyright'], 'c': ['clangd']}
let g:ale_linters = {'python': ['ruff', 'pydocstyle', 'flake8', 'bandit', 'mypy', 'prospector', 'cspell'], 'c': ['clangd', 'cppcheck', 'clangtidy'], 'html': ['vscode-html-languageserver', 'tidy'], 'htmldjango': ['vscode-html-languageserver', 'tidy']}
let g:ale_fixers = {'python': ['black'], 'c': ['astyle'], 'htmldjango': ['html-beautify'], 'html': ['html-beautify']}
let g:airline#extensions#ale#enabled = 1


let g:ale_lint_delay = 1000


let g:ale_lint_on_text_changed = 'never'






