function DiffviewToggle()
	local lib = require("diffview.lib")
	local view = lib.get_current_view()
	if view then
		-- Current tabpage is a Diffview; close it
		vim.cmd(":DiffviewClose")
	else
		-- No open Diffview exists: open a new one
		vim.cmd(":DiffviewOpen")
	end
end

local M = {
	"kdheepak/lazygit.nvim",
}
M.config = function()
	vim.keymap.set("n", "<leader>lg", ":LazyGit<CR>", { silent = true })
	vim.keymap.set("n", "<leader>lhf", ":LazyGitFilterCurrentFile<CR>", { silent = true })
	vim.keymap.set("n", "<leader>lcc", ":LazyGitFilter<CR>", { silent = true })

	if vim.fn.has("nvim") and vim.fn.executable("nvr") then
		vim.g.GIT_EDITOR = "nvr -cc split --remote-wait +'set bufhidden=wipe'"
	end

	vim.keymap.set("n", "<leader>G", ":Neogit kind=vsplit<CR>")
	vim.keymap.set("n", "<leader>D", DiffviewToggle)
end
return M
