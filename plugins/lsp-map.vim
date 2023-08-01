"  _____ COC _____
" autocomplete
inoremap <silent><expr> <c-space> coc#refresh()

" GoTo code navigation
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gt <Plug>(coc-type-definition)
nmap <silent> gr <Plug>(coc-references)
nmap <leader>rn <Plug>(coc-rename)

" Applying code actions to the selected code block
nmap <silent> ga <Plug>(coc-codeaction-line)
xmap <silent> ga <Plug>(coc-codeaction-selected)
nmap <silent> gA <Plug>(coc-codeaction-source)

" Docs
nnoremap <silent> <c-k> :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction



" highlight for cursor
autocmd CursorHold * silent call CocActionAsync('highlight')

" timing between update
set updatetime=300



" Add (Neo)Vim's native statusline support
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" inoremap <silent><expr> <TAB>
"       \ coc#pum#visible() ? coc#pum#next(1) :
"       \ CheckBackspace() ? "\<Tab>" :
"       \ coc#refresh()
" inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" snippets
let g:coc_snippet_next = '<tab>'
let g:coc_snippet_prev = '<s-tab>'
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ CheckBackspace() ? "\<TAB>" :
      \ coc#refresh()

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"



" _____ ALE _____
let g:ale_python_black_options = '-l 88 --skip-string-normalization'
let g:ale_python_autopep8_options = '--aggressive'

let g:ale_virtualtext_cursor = 'disable'
" let g:ale_echo_msg_format = '%s > [%severity%]-[%linter%]'
" let g:ale_loclist_msg_format = ' %s > [%severity%]-[%linter%] >> %...code...%'
let g:ale_echo_msg_format = '%s'
let g:ale_loclist_msg_format = ' %s'
let g:ale_linters = {'python': ['mypy', 'ruff', 'bandit'], 'c': ['clangd', 'cppcheck', 'clangtidy', 'splint'], 'html': ['vscode-html-languageserver', 'tidy'], 'htmldjango': ['vscode-html-languageserver', 'tidy'], 'cpp': ['clag', 'clangcheck', 'clangtidy']}
let g:ale_fixers = {'python': ['yapf'], 'c': ['clang-format'], 'htmldjango': ['html-beautify'], 'html': ['html-beautify']}
let g:ale_use_neovim_diagnostics_api = 1
let g:ale_completion_enabled = 0
" let g:ale_disable_lsp = 1
" let g:ale_lint_delay = 1000

" nmap <silent>  <c-j> :ALEPopulateLocList<CR>
nmap <silent>  <c-j> :TroubleToggle<CR><a-k>
nmap <F3> :w<cr>:ALEFix<CR>
nmap <F4> :w<CR>:CocCommand editor.action.formatDocument<CR>:w<CR>

let g:ale_python_mypy_options = '--disable-var-annotated'



" CPP C++
let g:ale_cpp_clang_options = '--std=c++11 -Wall'
let g:ale_cpp_clangtidy_options = '-Wall -std=c++11 -x c++ '
let g:ale_cpp_clangcheck_options = '-extra-arg -Xanalyzer -extra-arg -analyzer-output=text -- -Wall -std=c++11 -x c++ '

