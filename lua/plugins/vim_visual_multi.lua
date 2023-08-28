local M = {
	"mg979/vim-visual-multi",
}

M.config = function()
	---@diagnostic disable-next-line: undefined-global
	local b = vim.keymap.set
	b("n", "<C-LeftMouse>", "<Plug>(VM-Mouse-Cursor)")
	b("n", "<C-RightMouse>", "<Plug>(VM-Mouse-Word)")
	b("n", "<M-C-RightMouse>", "<Plug>(VM-Mouse-Column)")
end

return M
