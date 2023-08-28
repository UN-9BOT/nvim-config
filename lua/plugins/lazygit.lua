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

	vim.keymap.set("n", "<leader>G", ":Neogit<CR>")
end
return M
