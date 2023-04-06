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
"---
"
"move in insert mode
inoremap <silent> <c-h> <c-o>h
inoremap <silent> <c-j> <c-o>j
inoremap <silent> <c-k> <c-o>k
inoremap <silent> <c-l> <c-o>l

"  another esc
inoremap ;j <esc>

" only write
nmap <F2> :w<CR>

" tagbar
nmap <F3> :Vista<CR>

" compile with gcc
" nmap <F4> :w<CR>:!gcc -g -Wall -Werror -Wextra % -o compile<CR>
nmap <F4> :w<CR>:AsyncRun -mode=term -pos=floaterm -position=bottomright -width=0.5  gcc -g -Wall -Werror -Wextra % -o compile<CR>
" for system buffer paste and copy
nmap <C-S-v> "+p
"
nmap <C-S-y> "+y
"
"copy all text in system buffer
nmap <F5> gg<S-v>G"+y

" open explorer
nmap <C-t> :NERDTreeToggle<CR>
nmap <leader>] :NERDTreeFocus<CR>

" add void line
nmap <leader>o m`o<Esc>``
nmap <leader>O m`O<Esc>``

" comment
noremap <leader>/ :Commentary<cr> 

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
nnoremap   <silent>   <F7>    :FloatermNew<CR>
tnoremap   <silent>   <F7>    <C-\><C-n>:FloatermNew<CR>
nnoremap   <silent>   <F8>    :FloatermPrev<CR>
tnoremap   <silent>   <F8>    <C-\><C-n>:FloatermPrev<CR>
nnoremap   <silent>   <F9>    :FloatermNext<CR>
tnoremap   <silent>   <F9>    <C-\><C-n>:FloatermNext<CR>
nnoremap   <silent>   <F12>   :w<CR> :FloatermToggle<CR>
tnoremap   <silent>   <F12>   <C-\><C-n>:FloatermToggle<CR>

"swap windows
let g:windowswap_map_keys = 0 "prevent default bindings
nnoremap <silent> <leader>yw :call WindowSwap#MarkWindowSwap()<CR>
nnoremap <silent> <leader>pw :call WindowSwap#DoWindowSwap()<CR>
nnoremap <silent> <leader>ww :call WindowSwap#EasyWindowSwap()<CR>

" ------- "

"for LSP server
function! s:on_lsp_buffer_enabled() abort
    setlocal omnifunc=lsp#complete
    setlocal signcolumn=yes
    if exists('+tagfunc') | setlocal tagfunc=lsp#tagfunc | endif
    nmap <buffer> gd <plug>(lsp-definition)
    nmap <buffer> gs <plug>(lsp-document-symbol-search)
    nmap <buffer> gS <plug>(lsp-workspace-symbol-search)
    nmap <buffer> gr <plug>(lsp-references)
    nmap <buffer> gi <plug>(lsp-implementation)
    nmap <buffer> gp <plug>(lsp-type-definition)
    noremap <buffer> <leader>rn <plug>(lsp-rename)
    nmap <buffer> [g <plug>(lsp-previous-diagnostic)
    nmap <buffer> ]g <plug>(lsp-next-diagnostic)
    nmap <buffer> K <plug>(lsp-hover)
    nmap <buffer> <c-k> :LspDocumentDiagnostics<CR>
    nnoremap <buffer> <expr><c-f> lsp#scroll(+4)
    nnoremap <buffer> <expr><c-d> lsp#scroll(-4)

    let g:lsp_format_sync_timeout = 1000
    autocmd! BufWritePre *.rs,*.go call execute('LspDocumentFormatSync')
    
    " refer to doc to add more commands
endfunction
augroup lsp_install
    au!
    " call s:on_lsp_buffer_enabled only for languages that has the server registered.
    autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
augroup END

" ----------- "

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
set colorcolumn=109
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
let g:LanguageClient_serverCommands = {
  \ 'c': ['clangd'],
  \ }

"For plugins
filetype off
set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin('~/.config/nvim/bundle')

" plugin manager
Plugin 'VundleVim/Vundle.vim'

"lsp 
Plugin 'prabirshrestha/vim-lsp'
Plugin 'mattn/vim-lsp-settings'
Plugin 'prabirshrestha/asyncomplete.vim'
Plugin 'prabirshrestha/asyncomplete-lsp.vim'

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
Plugin 'sainnhe/sonokai'
Plugin 'folke/tokyonight.nvim'
Plugin 'sainnhe/everforest'
Plugin 'catppuccin/nvim'
Plugin 'sainnhe/edge'
Plugin 'dracula/vim'

" fast motion
Plugin 'easymotion/vim-easymotion'


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
