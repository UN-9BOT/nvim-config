
local M = {
	"mfussenegger/nvim-dap-python",
}
M.keys = {
	{
		"<leader>dPt",
		function()
			require("dap-python").test_method()
		end,
		desc = "Debug Method",
	},
	{
		"<leader>dPc",
		function()
			require("dap-python").test_class()
		end,
		desc = "Debug Class",
	},
}
M.config = function()
	-- local path = require("mason-registry").get_package("debugpy"):get_install_path()
	require("dap-python").setup("python")
	require("dap-python").test_runner = "pytest"
end

return M
