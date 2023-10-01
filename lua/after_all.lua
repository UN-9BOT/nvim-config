---@diagnostic disable: undefined-global

-- asterisk
local b = vim.keymap.set
b({ "n", "v" }, "*", "<Plug>(asterisk-z*)")
b({ "n", "v" }, "#", "<Plug>(asterisk-z#)")
b({ "n", "v" }, "g*", "<Plug>(asterisk-gz*)")
b({ "n", "v" }, "g#", "<Plug>(asterisk-gz#)")
