" enable gtags module
let g:gutentags_modules = ['ctags']
" if executable('gtags-cscope') && executable('gtags')                                                                                                                                                 
"     let g:gutentags_modules += ['gtags_cscope']                                                                                                                                                       
" endif

" config project root markers.
let g:gutentags_project_root = ['.git']

" generate datebases in my cache directory, prevent gtags files polluting my project
let g:gutentags_cache_dir = expand('~/.cache/tags')

" change focus to quickfix window after search (optional).
let g:gutentags_plus_switch = 1

" ignore
" let g:gutentags_ctags_exclude = ['vendor/*', 'tmp/*', 'log/*', 'coverage/*', 'doc/*', '.mypy_cache']
let g:gutentags_ctags_exclude = ['vendor/*', 'tmp/*', 'log/*', 'coverage/*', 'doc/*', '.mypy_cache', '.venv']
set statusline+=%{gutentags#statusline()}
nmap <leader>i :ImportName<CR>
