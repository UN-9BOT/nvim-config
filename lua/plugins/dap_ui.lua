local M = {
	"rcarriga/nvim-dap-ui",
}
M.config = function()
	require("dapui").setup()

	---@diagnostic disable-next-line: undefined-global
	local b = vim.keymap.set
	local opts = { noremap = true, silent = true }

	b("n", "<leader>du", "<cmd>lua require('dapui').toggle()<CR>", opts)
end

return M
