" ---- bindings ---- 
" easy motion --
map , <Plug>(easymotion-prefix)
map  ,f <Plug>(easymotion-bd-f)
nmap ,f <Plug>(easymotion-overwin-f)
nmap ,s <Plug>(easymotion-overwin-f2)
map ,L <Plug>(easymotion-bd-jk)
nmap ,L <Plug>(easymotion-overwin-line)
map  ,w <Plug>(easymotion-bd-w)
nmap ,w <Plug>(easymotion-overwin-w)
nmap <s-j> 10jzz
nmap <s-k> 10kzz
"---
"
" for associatee in comand line vim
cnoreabbrev W w

" telescope bind
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
"
"move in insert mode
inoremap <silent> <c-h> <esc>i
inoremap <silent> <c-j> <esc>ja
inoremap <silent> <c-k> <esc>ka
inoremap <silent> <c-l> <esc>la

"  another esc
inoremap <silent> ;j <esc>:noh<CR>:w<cr>
nnoremap <silent> ;j <esc>:noh<CR>:w<cr>

" only write
nmap <F2> :w<CR>

" tagbar
nmap <F3> :Vista<CR>

" compile with gcc
" for system buffer paste and copy
nmap <C-S-v> "+p
vmap <C-S-c> "+y
"
"copy all text in system buffer
nmap <F5> gg<S-v>G"+y

" open explorer
nmap <C-t> :NERDTreeToggle<CR>
nmap <leader>] :NERDTreeFocus<CR>

" add void line
nmap ,o m`o<Esc>``
nmap ,O m`O<Esc>``

" for swap in windows
nnoremap <silent> <a-h> <C-w>h
nnoremap <silent> <a-j> <C-w>j
nnoremap <silent> <a-k> <C-w>k
nnoremap <silent> <a-l> <C-w>l


nmap <silent> <a-.> :bnext<cr>
nmap <silent> <a-,> :bprevious<cr>


" lazygit
nnoremap   <silent>   <F5>   :FloatermNew --height=0.9 --width=0.9 --wintype=float --name=floaterm1 --autoclose=2 lazygit<CR>

" floating term
nnoremap   <silent>   <F12>   :w<CR>:let @+=expand('%')<CR>:FloatermToggle<CR>
tnoremap   <silent>   <F12>   <C-\><C-n>:FloatermToggle<CR>

"swap windows
let g:windowswap_map_keys = 0 "prevent default bindings
nnoremap <silent> <leader>yw :call WindowSwap#MarkWindowSwap()<CR>
nnoremap <silent> <leader>pw :call WindowSwap#DoWindowSwap()<CR>
nnoremap <silent> <leader>ww :call WindowSwap#EasyWindowSwap()<CR>

" ------- "

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

    " let g:lsp_format_sync_timeout = 1000
    " autocmd! BufWritePre *.rs,*.go call execute('LspDocumentFormatSync')
    
    " refer to doc to add more commands

" ----------- "

" aвтообновление изменений в файле
set autoread
" Вырубаем swap files 
set noswapfile
" Выключаем бэкапы
set nobackup 
set undofile
" номера строк
set number
" относительная нумерация от текущей строки (для удобной навигации)
set relativenumber

" хоткеи для русской раскладки в нормальном режиме
set langmap=ёйцукенгшщзхъфывапролджэячсмитьбюЁЙЦУКЕHГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮ;`qwertyuiop[]asdfghjkl\\;'zxcvbnm\\,.~QWERTYUIOP{}ASDFGHJKL:\\"ZXCVBNM<>
 
" устраняет баги с неверной шириной табов
set smarttab
" копирует табы с предыущей строки
set autoindent
" автотабуляция для фигурных скобок
set cindent

set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4
" last n lines visible
set scrolloff=4

" Отображает координаты курсора
set ruler
" отображает выделение текущей строки
set cursorline
" вертикальная черта для отображения границ кода (читаемость)
highlight ColorColumn ctermbg=gray
set colorcolumn=79
" перенос строки если выход за 80 символов
set wrap


" включает мышь (выделение и перемещение)
set mouse=a
" скрывает мышь при вводе с клавиатуры
set mousehide

" кодировка вводимого текста
set termencoding=utf-8
" кодировка текста в буферах
set encoding=utf-8
" порядок определения кодировки в файлах
set fileencodings=utf8,cp1251

" всегда отображает 7 последних строк при скролинге
" set scrolloff=7

"For plugins
filetype off
set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin('~/.config/nvim/bundle')

" plugin manager
Plugin 'VundleVim/Vundle.vim'

"lsp and autocomplete
Plugin 'dense-analysis/ale'
Plugin 'Shougo/deoplete.nvim'
Plugin 'prabirshrestha/vim-lsp'
Plugin 'prabirshrestha/async.vim'
Plugin 'prabirshrestha/asyncomplete.vim'
Plugin 'prabirshrestha/asyncomplete-lsp.vim'
Plugin 'thomasfaingnaert/vim-lsp-snippets'
Plugin 'SirVer/ultisnips'
Plugin 'thomasfaingnaert/vim-lsp-ultisnips'
Plugin 'mattn/vim-lsp-settings'
Plugin 'rhysd/vim-lsp-ale' 


" swap windows with \yw \pw
Plugin 'wesQ3/vim-windowswap'

" explorer
Plugin 'preservim/nerdtree'

" commentary \/
Plugin 'tpope/vim-commentary'

" theme
Plugin 'rebelot/kanagawa.nvim'

" todo note on left bar
Plugin 'folke/todo-comments.nvim'

" bottom bar
Plugin 'vim-airline/vim-airline'

" icons in nerdtree and explorer
Plugin 'ryanoasis/vim-devicons'

" highlight for func 
Plugin 'nvim-treesitter/nvim-treesitter'

" custom popup window for another plugins
Plugin 'nvim-lua/popup.nvim'

" auto pairs...
Plugin 'windwp/nvim-autopairs'

" float term
Plugin 'voldikss/vim-floaterm'

" async tasks
Plugin 'skywind3000/asynctasks.vim'
Plugin 'skywind3000/asyncrun.vim'
Plugin 'skywind3000/asyncrun.extra'
Plugin 'nvim-lua/plenary.nvim'

" last place for reopen file
Plugin 'farmergreg/vim-lastplace'

" dashboard
Plugin 'mhinz/vim-startify'

" tagbar
Plugin 'liuchengxu/vista.vim'

" dox comment
Plugin 'vim-scripts/DoxygenToolkit.vim'

" for f-key
Plugin 'rhysd/clever-f.vim'

" scheme 
Plugin 'sainnhe/edge'

" fast motion
Plugin 'easymotion/vim-easymotion'

"fzf finder
Plugin 'nvim-telescope/telescope.nvim', { 'tag': '0.1.1' }



"end
call vundle#end()
filetype plugin indent on



lua << EOF
require("nvim-autopairs").setup {}
EOF


lua << EOF
  require("todo-comments").setup {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  }
EOF



" Netrw file explorer
"
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browser_split = 3

" airline 
"
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'default'

" цветовая схема
"
 colorscheme edge
