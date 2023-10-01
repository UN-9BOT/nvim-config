---@diagnostic disable: undefined-global
local M = {
	"nvim-telescope/telescope.nvim",
}

M.config = function()
	local b = vim.keymap.set
	local opts = { noremap = true, silent = true }

	local builtin = require("telescope.builtin")

	b({ "n", "v" }, ",c", builtin.git_bcommits_range, opts)
	b({ "n", "v" }, ",t", builtin.treesitter, opts)

	b("n", ",f", "<CMD>Telescope find_files<CR>", opts)
	b("n", ",F", "<CMD>Telescope file_browser<CR>", opts)
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
				"%.class$",
				"%.dmg$",
				"%.gif$",
				"%.gz$",
				"%.iso$",
				"%.jar$",
				"%.jpg$",
				"%.jpeg$",
				"%.JPEG$",
				"%.mkv$",
				"%.mp4$",
				"%.o$",
				"%.otf$",
				"%.out$",
				"%.pdf$",
				"%.png$",
				"%.PNG$",
				"%.pyc$",
				"%.pyi$",
				"%.tar",
				"%.torrent$",
				"%.ttf$",
				"%.webm$",
				"%.webp$",
				"%.zip$",
				"^.dart_tool/",
				"^.git/",
				"^.github/",
				"^.gradle/",
				"^.idea/",
				"^.settings/",
				"^.vscode/",
				"^.env/",
				"^__pycache__/",
				"^bin/",
				"^build/",
				"^env/",
				"^gradle/",
				"^node_modules/",
				"^obj/",
				"^target/",
				"^vendor/",
				"^zig%-cache/",
				"^zig%-out/",
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
		pickers = {
			find_files = {
				layout_config = { height = 0.4 },
				theme = "ivy",
				previewer = true,
				sorting = "frecency",
			},
			live_grep = {
				layout_config = {
					anchor = "N",
					height = 0.50,
					mirror = true,
					width = 0.95,
				},
				theme = "dropdown",
			},
			git_bcommits_range = {
				layout_config = {
					anchor = "N",
					height = 0.30,
					mirror = true,
					width = 0.95,
				},
				theme = "dropdown",
			},
			treesitter = {
				layout_config = {
					anchor = "N",
					height = 0.30,
					mirror = true,
					width = 0.95,
				},
				theme = "dropdown",
			},
			grep_string = {
				layout_config = {
					anchor = "N",
					height = 0.30,
					mirror = true,
					width = 0.95,
				},
				theme = "dropdown",
			},
			registers = {
				theme = "dropdown",
			},
			current_buffer_fuzzy_find = {
				layout_config = {
					anchor = "N",
					height = 0.30,
					mirror = true,
					width = 0.95,
				},
				theme = "dropdown",
			},
		},
	})
	require("telescope").load_extension("fzf")
	require("telescope").load_extension("file_browser")
end

M.dependencies = {
      {
        "prochri/telescope-all-recent.nvim",
        dependencies = { "kkharji/sqlite.lua" },
      },
}

return M
-- require("telescope").load_extension('media_files')
-- require("telescope").load_extension("live_grep_args")
-- require("telescope").load_extension("lazygit")
