---@diagnostic disable: undefined-global
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

local status_ok, lazy = pcall(require, "lazy")
if not status_ok then
	print("lazy just installed, please restart neovim")
	return
end

lazy.setup({
	--
	--
	-- WITHOUT CONFIG
	--
	--
	-- helper for lua
	{ "nvim-lua/plenary.nvim" },
	{ "kkharji/sqlite.lua" },

	-- transparent for nvim
	{ "tribela/vim-transparent" },

	-- last place in file
	{ "farmergreg/vim-lastplace" },

	-- surround ("' [ { }]')  --> ysiw' | cs'" | ds"
	{ "tpope/vim-surround" },
	{ "tpope/vim-repeat" }, -- repeat for surround

	-- git diff
	{ "sindrets/diffview.nvim" },

	-- zoom tab (split)
	{ "dhruvasagar/vim-zoom" },

	-- * # highlight
	{ "haya14busa/vim-asterisk" },

	-- marks
	{ "chentoast/marks.nvim" },

	-- next for move in an In An {["'"]}
	{ "wellle/targets.vim" },
	-- { "nvim-treesitter/nvim-treesitter-textobjects" },

	-- WITH CONFIG
	--
	--
	-- mason (deps)
	-- require("plugins.mason"),

	-- theme / colorscheme
	require("plugins.edge"),
	-- require("plugins.tokyonight"),
	-- require("plugins.catpuccin"),

	--file manager ( ranger )
	require("plugins.rnvimr"),
	require("plugins.nvim_tree"),

	-- scrolling
	require("plugins.vim_smooth_scroll"),

	-- buffers
	require("plugins.bufferline"),

	-- bottomline
	require("plugins.lualine"),

	-- icons
	require("plugins.nvim_web_devicons"),

	-- treesitter
	require("plugins.treesitter"),

	-- session
	require("plugins.sessions"),

	{
		"prochri/telescope-all-recent.nvim",
		dependencies = {
			"kkharji/sqlite.lua",
			"nvim-telescope/telescope.nvim",
		},
		-- lazy = true,
		config = function()
			require("telescope-all-recent").setup({
				pickers = {
					find_files = {
						disable = false,
						use_cwd = true,
						sorting = "frecency",
					},
				},
			})
		end,
	},

	-- telescope
	require("plugins.telescope"),
	{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
	{
		"nvim-telescope/telescope-file-browser.nvim",
		dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
	},

	-- auto-save files
	require("plugins.vim_auto_save"),

	-- fast motion
	require("plugins.easymotion"),

	-- indent blanklin for func
	require("plugins.indent_blankline"),

	-- rainbow brackets and operators
	require("plugins.rainbow_delimiters"),

	-- autopairs for brackets
	require("plugins.nvim_autopairs"),

	-- commentary for
	require("plugins.comment"),

	-- TODO: WARNING: FIX: XXX: BUG: NOTE:
	require("plugins.todo_comments"),

	-- DOC
	require("plugins.neogen"),

	-- zen mode
	require("plugins.zen_mode"),

	-- multi cursor
	require("plugins.vim_visual_multi"),

	-- TODO: нужно доделать настройки
	-- GIT
	-- -- left bar
	{
		"lewis6991/gitsigns.nvim",
		config = function()
			require("plugins.gitsigns")
		end,
	},
	-- -- Lazy Git
	require("plugins.lazygit"),
	-- -- Neogit
	{ "NeogitOrg/neogit", config = true },
	{ "sindrets/diffview.nvim" },

	-- context func
	{ "nvim-treesitter/nvim-treesitter-context" },

	-- menu vim
	{
		"gelguy/wilder.nvim",
		config = function()
			require("plugins.wilder")
		end,
	},

	-- tagbar F8
	{
		"preservim/tagbar",
		config = function()
			require("plugins.tagbar")
		end,
	},

	-- resize windows CTRL+e
	{ "simeji/winresizer" },

	-- F-motion
	{
		"rhysd/clever-f.vim",
		config = function()
			require("plugins.clever_f")
		end,
	},

	-- Codeium AI
	{
		"Exafunction/codeium.vim",
		config = function()
			require("plugins.codeium")
		end,
	},

	-- python import
	{ "mgedmin/python-imports.vim" },

	-- tag for import
	{
		"ludovicchabant/vim-gutentags",
		config = function()
			require("plugins.gutentags")
		end,
	},

	-- lsp
	{
		"neoclide/coc.nvim",
		config = function()
			require("plugins.coc")
		end,
		branch = "release",
	},
	{
		"dense-analysis/ale",
		config = function()
			require("plugins.ale")
		end,
	},
	{
		"folke/trouble.nvim",
		config = function()
			require("plugins.trouble")
		end,
	},

	-- dap debuger
	-- { "mfussenegger/nvim-dap" },
	require("plugins.dap"),
	-- require("plugins.dap_python"),
	require("plugins.dap_ui"),

	-- neotest
	{ "nvim-neotest/neotest" },
	require("plugins.neotest_python"),
	--
	--
	-- tmux
	-- require("plugins.tmux"),
	-- { "christoomey/vim-tmux-navigator" },

	-- preview
	{
		"dstein64/nvim-scrollview",
		config = function()
			vim.g.scrollview_diagnostics_severities = {}
		end,
	},
	require("plugins.telekasten"),
	require("plugins.hlslens"),
	-- {
	-- 	"roobert/tabtree.nvim",
	-- 	config = function()
	-- 		require("tabtree").setup({
	-- 			-- print the capture group name when executing next/previous
	-- 			--debug = true,
	--
	-- 			-- disable key bindings
	-- 			--key_bindings_disabled = true,
	--
	-- 			key_bindings = {
	-- 				next = "<Tab>",
	-- 				previous = "<S-Tab>",
	-- 			},
	--
	-- 			-- use :InspectTree to discover the (capture group)
	-- 			-- @capture_name can be anything
	-- 			language_configs = {
	-- 				python = {
	-- 					target_query = [[
 --              (string) @string_capture
 --              (interpolation) @interpolation_capture
 --              (parameters) @parameters_capture
 --              (argument_list) @argument_list_capture
 --            ]],
	-- 					-- experimental feature, to move the cursor in certain situations like when handling python f-strings
	-- 					offsets = {
	-- 						string_start_capture = 1,
	-- 					},
	-- 				},
	-- 			},
	--
	-- 			default_config = {
	-- 				target_query = [[
 --              (string) @string_capture
 --              (interpolation) @interpolation_capture
 --              (parameters) @parameters_capture
 --              (argument_list) @argument_list_capture
 --          ]],
	-- 				offsets = {},
	-- 			},
	-- 		})
	--mgedmin/python-imports.vim 	end,
	-- },
})
