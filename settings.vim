" python path
let g:python3_host_prog = '/usr/bin/python3'

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

" цветовая схема
 colorscheme edge

 " highlight yank text
 au TextYankPost * silent! lua vim.highlight.on_yank {higroup="IncSearch", timeout=350}
