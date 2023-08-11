" python path
let g:python3_host_prog = '/usr/bin/python3'
let g:rnvimr_ranger_cmd= ["/usr/bin/python3"]


" игнорирование регистра при поиске
set ignorecase

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

" всегда отображать левый столбец знаков
set signcolumn=yes
 
" устраняет баги с неверной шириной табов
set smarttab
" копирует табы с предыущей строки
set autoindent
" автотабуляция для фигурных скобок
set cindent

" for C file (google style)
autocmd FileType c setlocal sw=2 ts=2 ai et softtabstop=2

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
set colorcolumn=120
" перенос строки если выход за 120 символов
set wrap


" включает мышь (выделение и перемещение) / sgr - new mode for mouse in
" classic vim after 7.3.6
set mousehide
set mouse=a
" set ttymouse=sgr
" set ttymouse=xterm2
" скрывает мышь при вводе с клавиатуры

" кодировка вводимого текста
set termencoding=utf-8
" кодировка текста в буферах
set encoding=utf-8
" порядок определения кодировки в файлах
set fileencodings=utf8,cp1251

" цветовая схема
colorscheme edge

 " highlight yank text
au TextYankPost * silent! lua vim.highlight.on_yank {higroup="IncSearch", timeout=350}

" отключает автосохранение при переключении между буферами
" set noautowriteall
"
" отключает смещение при отрытии или закрытии буфера
" set lazyredraw
"
" автосохранение при выходе из режима вставки
" autocmd InsertLeave * write " не корректно с плагинами
" autocmd TextChanged,TextChangedI <buffer> silent write
let g:auto_save = 1 " Plugin '907th/vim-auto-save'
