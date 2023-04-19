"for LSP server
imap <c-space> <Plug>(asyncomplete_force_refresh)
nmap <F8> :w<cr>:!autopep8 % -a --in-place<cr><cr>
nmap <F4> :w<cr>:ALEFix<CR>
let g:ale_virtualtext_cursor = 'current'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
" let g:ale_linters = {'python': ['ruff', 'pycodestyle', 'pydocstyle', 'flake8', 'bandit', 'mypy', 'pyright'], 'c': ['clangd']}
let g:ale_linters = {'python': ['ruff', 'pydocstyle', 'flake8', 'bandit', 'mypy'], 'c': ['clangd', 'cppcheck', 'clangtidy']}
let g:ale_fixers = {'python': ['black'], 'c': ['astyle']}
nmap  gd <plug>(lsp-definition)
nmap  gs <plug>(lsp-document-symbol-search)
nmap  gr <plug>(lsp-references)
nmap  gt <plug>(lsp-type-definition)
nmap  <leader>rn <plug>(lsp-rename)
nmap  [g <plug>(ale_previous_wrap)
nmap  ]g <plug>(ale_next_wrap)
nmap <silent>  <c-k> <plug>(lsp-hover)
nmap <silent>  <c-j> :ALEPopulateLocList<CR>
