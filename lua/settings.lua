---@diagnostic disable: undefined-global

-- security
vim.opt.modelines = 0

-- " python path
-- TODO: сделать относительно venv
vim.g.python3_host_prog = "/usr/bin/python3"
-- " let g:rnvimr_ranger_cmd= ["/usr/bin/python3"]
--
-- фикс для backspace
vim.opt.backspace = "indent,eol,start"

--
-- " игнорирование регистра при поиске
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.infercase = true

-- нумерация
vim.opt.number = true
--
-- aвтообновление изменений в файле
vim.opt.autoread = true

-- фикс для буферов - переключение
vim.opt.hidden = true

-- " Вырубаем swap files
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undofile = true
vim.opt.undodir = vim.fn.stdpath("data") .. "/undo"
--
-- всегда отображать левый столбец знаков
vim.opt.signcolumn = "yes:2"

--
-- подсветка поиска
vim.opt.hlsearch = true
-- подсветка по мере ввода
vim.opt.incsearch = true
-- предосмотр для замены
vim.opt.inccommand = "split"

-- устраняет баги с неверной шириной табов
vim.opt.smarttab = true

-- копирует табы с предыущей строки
vim.opt.autoindent = true
-- " автотабуляция для фигурных скобок
vim.opt.cindent = true
--
-- " for C file (google style)
-- autocmd FileType c setlocal sw=2 ts=2 ai et softtabstop=2
--
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true

-- last n lines visible
vim.scrolloff = 4
--
-- " отображает выделение текущей строки
vim.opt.cursorline = true
-- " вертикальная черта для отображения границ кода (читаемость)
vim.opt.colorcolumn = "120"
-- перенос строки если выход за 120 символов
vim.opt.wrap = true
vim.opt.breakindent = true

--
--
-- " включает мышь
vim.opt.mouse = "a"

--  highlight yank text
vim.api.nvim_exec(
	[[
  augroup YankHighlight
    autocmd!
    autocmd TextYankPost * lua vim.highlight.on_yank({higroup="IncSearch", timeout=350}) 
  augroup END
]],
	false
)

-- for system buffer paste and copy
vim.opt.clipboard = "unnamedplus"

-- for associatee in comand line vim
vim.api.nvim_command("cnoreabbrev W w")

--
-- show invisibles
vim.opt.listchars = { tab = "  ", trail = "·", extends = "»", precedes = "«", nbsp = "░" }
vim.opt.list = true


-- split style
vim.opt.fillchars = { vert = "▒" }
vim.opt.splitbelow = true
vim.opt.splitright = true


-- syntax highlighting
vim.opt.termguicolors = true
vim.opt.synmaxcol = 512
