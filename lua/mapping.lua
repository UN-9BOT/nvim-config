---@diagnostic disable-next-line: undefined-global

-- mapleader -> Space
vim.g.mapleader = " "

local b = vim.keymap.set
local opts = { noremap = true, silent = true }

-- for move in windows
b("n", "<c-h>", "<C-w>h", opts)
b("n", "<c-j>", "<C-w>j", opts)
b("n", "<c-k>", "<C-w>k", opts)
b("n", "<c-l>", "<C-w>l", opts)
--

-- move in insert mode
b("i", "<c-h>", "<left>", opts)
b("i", "<c-j>", "<down>", opts)
b("i", "<c-k>", "<up>", opts)
b("i", "<c-l>", "<right>", opts)

-- disable highlight when ESC is pressed
b({ "i", "v", "n" }, "<ESC>", "<ESC>:noh<CR>", opts)

--
-- copy all text in system buffer
b("n", "<leader>Y", "<Cmd>%y+<CR>", opts)

-- delete buffer
b("n", "Q", "<Cmd>bd<CR>", opts)

-- для + - перемещения
-- b("n", "=", "+", opts)

-- save session
b({ "n", "v" }, "ZZ", "<ESC>:SessionSave<cr>ZZ", opts)

-- remap <c-q> -> q
b("n", "<c-q>", "q", opts)
b("n", "q", "<Nop>", opts)
