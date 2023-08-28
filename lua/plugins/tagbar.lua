-- vim.api.nvim_create_autocmd("VimEnter", {
--   pattern = "*",
--   nested = true,
--   callback = function()
--     vim.cmd("TagbarOpen")
--   end
-- })

vim.keymap.set("n", "<F8>", ":TagbarToggle<CR>")

vim.keymap.set("n", "]]", ":TagbarJumpNext<CR>")

vim.keymap.set("n", "[[", ":TagbarJumpPrev<CR>")
