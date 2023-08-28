vim.g.ale_linters = {
	python = { "mypy", "ruff", "bandit", "flakeheaven", "refurb" },
	c = { "clangd", "cppcheck", "clangtidy", "splint" },
	html = { "vscode-html-languageserver", "tidy" },
	htmldjango = { "vscode-html-languageserver", "tidy" },
	cpp = { "clag", "clangcheck", "clangtidy" },
}

vim.g.ale_virtualtext_cursor = "disable"
vim.g.ale_completion_enabled = 0
vim.g.ale_use_neovim_diagnostics_api = 1

vim.g.ale_echo_msg_format = "%s"
-- vim.g.ale_echo_msg_format = '%s > [%severity%]-[%linter%]'
vim.g.ale_loclist_msg_format = " %s"
-- vim.g.ale_loclist_msg_format = ' %s > [%severity%]-[%linter%] >> %...code...%'

vim.g.ale_python_mypy_options = "--disable-var-annotated"

vim.g.ale_python_bandit_options = "--skip B101"
