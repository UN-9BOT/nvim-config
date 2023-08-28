---@diagnostic disable: undefined-global
local M = {
	"nvim-telescope/telescope.nvim",
}

M.config = function()
	local b = vim.keymap.set
	local opts = { noremap = true, silent = true }

	local builtin = require("telescope.builtin")

	b("n", ",f", builtin.find_files, opts)
	b("n", ",g", builtin.live_grep, opts)
	b({ "n", "v" }, ",v", builtin.grep_string, opts)
	b({ "n", "v" }, ",r", builtin.registers, opts)
	b("n", "<c-f>", builtin.current_buffer_fuzzy_find, opts)

	require("telescope").setup({
		defaults = {
			file_ignore_patterns = {
				"node_modules",
				"static",
				"%.svg",
				".png",
				".jpg",
				".jpeg",
				".mp4",
				".ico",
				".otf",
				".icns",
				".mp3",
				".gif",
				".wav",
				"assets/**",
				"assets/",
				"*/assets",
				".json",
				"site-packages",
				"site-packages/*",
				"site-packages/%",
				"poetry.lock",
				"migrations",
			},
		},
		extensions = {
			media_files = {
				-- filetypes whitelist
				-- defaults to {"png", "jpg", "mp4", "webm", "pdf"}
				filetypes = { "png", "webp", "jpg", "jpeg", "webm", "pdf" },
				-- find command (defaults to `fd`)
				find_cmd = "rg",
			},
		},
	})
end

return M
-- require("telescope").load_extension('media_files')
-- require("telescope").load_extension("live_grep_args")
-- require("telescope").load_extension("lazygit")
