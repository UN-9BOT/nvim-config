return {
	"sainnhe/edge",
	-- dev = true,
	-- branch = "dev",
	lazy = false,
	priority = 1000,
	config = function()
		vim.cmd([[colorscheme edge]])
        vim.g.edge_better_performance = 1
	end,
}
