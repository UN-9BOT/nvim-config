local M = {
	"nvim-treesitter/nvim-treesitter",
	lazy = false,
}

M.config = function()
	require("nvim-treesitter.configs").setup({
		highlight = { enable = true },
		indent = { enable = true },
	})
end

return M
