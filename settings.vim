
" python path
let g:python3_host_prog = '/usr/bin/python3'
let g:rnvimr_ranger_cmd= ["/usr/bin/python3"]

" отключает смещение при отрытии или закрытии буфера
set noautowriteall
set lazyredraw

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
" set relativenumber

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
 

" ----- make sessions ----
function! MakeSession()
  let b:sessiondir = $HOME . "/.vim/sessions" . getcwd()
  if (filewritable(b:sessiondir) != 2)
    exe 'silent !mkdir -p ' b:sessiondir
    redraw!
  endif
  let b:filename = b:sessiondir . '/session.vim'
  exe "mksession! " . b:filename
endfunction

function! LoadSession()
  let b:sessiondir = $HOME . "/.vim/sessions" . getcwd()
  let b:sessionfile = b:sessiondir . "/session.vim"
  if (filereadable(b:sessionfile))
    exe 'source ' b:sessionfile
  else
    echo "No session loaded."
  endif
endfunction

" Adding automatons for when entering or leaving Vim
if(argc() == 0)
  au VimEnter * nested :call LoadSession()
endif
au VimLeave * :call MakeSession()
" END ---- make sessions ----
