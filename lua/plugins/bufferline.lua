local M = {
	"akinsho/bufferline.nvim",
}

M.config = function()
	require("bufferline").setup()

	vim.opt.termguicolors = true


	-- for move in buffers
	local b = vim.keymap.set
	local opts = { noremap = true, silent = true }
	b("n", "<a-,>", "<Cmd>BufferLineCyclePrev<CR>", opts)
	b("n", "<a-.>", "<Cmd>BufferLineCycleNext<CR>", opts)

end

return M
