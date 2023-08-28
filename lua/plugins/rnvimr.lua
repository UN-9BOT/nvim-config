local M = {
	"kevinhwang91/rnvimr",
	lazy = true,
}

M.keys = {
	-- ctrl space - toggle rnvimr
	{ "<c-space>", "<cmd>RnvimrToggle<CR>", desc = "Toggle Rnvimr" },
	{ "<c-space>", "<C-\\><C-n><cmd>RnvimrToggle<CR>", mode = { "t" }, desc = "Rnvimr Toggle" },
}

-- Настройки rnvimr
M.config = function()
	vim.g.rnvimr_enable_bw = 1
	vim.g.rnvimr_enable_ex = 1
	vim.g.rnvimr_enable_picker = 1
	vim.g.rnvimr_shadow_winblend = 80
	vim.g.rnvimr_vanilla = 0
	vim.g.rnvimr_ranger_cmd = { "ranger", "--cmd=set draw_borders both" }

	-- Действия
	vim.g.rnvimr_action = {
		["<cr>"] = "NvimEdit edit",
		["<C-t>"] = "NvimEdit tabedit",
		["<A-i>"] = "NvimEdit split",
		["<C-i>"] = "NvimEdit vsplit",
	}
end

return M
