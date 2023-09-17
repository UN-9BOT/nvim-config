---@diagnostic disable: undefined-global
local M = {
	"mfussenegger/nvim-dap",
}

M.keys = {
    { "<leader>ddb", function() require("dap").toggle_breakpoint() end, desc = "Toggle Breakpoint" },
    { "<leader>ddc", function() require("dap").continue() end, desc = "Continue" },
    { "<leader>ddC", function() require("dap").run_to_cursor() end, desc = "Run to Cursor" },
    -- { "<leader>ddg", function() require("dap").goto_() end, desc = "Go to line (no execute)" },
    { "<leader>ddi", function() require("dap").step_into() end, desc = "Step Into" },
    { "<leader>ddj", function() require("dap").down() end, desc = "Down" },
    { "<leader>ddk", function() require("dap").up() end, desc = "Up" },
    { "<leader>ddl", function() require("dap").run_last() end, desc = "Run Last" },
    { "<leader>ddo", function() require("dap").step_out() end, desc = "Step Out" },
    { "<leader>ddO", function() require("dap").step_over() end, desc = "Step Over" },
    { "<leader>ddp", function() require("dap").pause() end, desc = "Pause" },
    { "<leader>ddr", function() require("dap").repl.toggle() end, desc = "Toggle REPL" },
    { "<leader>dds", function() require("dap").session() end, desc = "Session" },
    { "<leader>ddt", function() require("dap").terminate() end, desc = "Terminate" },
    { "<leader>ddw", function() require("dap.ui.widgets").hover() end, desc = "Widgets" },
    { "<leader>tdd", function() require("neotest").run.run({strategy = "dap"}) end, desc = "Debug Nearest" },
}

M.config = function()
	local dap = require("dap")
	dap.adapters.python = {
		type = "executable",
		command = vim.g.python3_host_prog,
		args = { "-m", "debugpy.adapter" },
	}

	dap.configurations.python = {
		{
			-- The first three options are required by nvim-dap
			type = "python", -- the type here established the link to the adapter definition: `dap.adapters.python`
			request = "launch",
			name = "Launch file",
			-- Options below are for debugpy, see https://github.com/microsoft/debugpy/wiki/Debug-configuration-settings for supported options
			program = "${file}", -- This configuration will launch the current file if used.
			pythonPath = function()
				if vim.env.VIRTUAL_ENV then
					return vim.env.VIRTUAL_ENV .. "/bin/python"
				end
				-- debugpy supports launching an application with a different interpreter then the one used to launch debugpy itself.
				-- The code below looks for a `venv` or `.venv` folder in the current directly and uses the python within.
				-- You could adapt this - to for example use the `VIRTUAL_ENV` environment variable.
				local cwd = vim.fn.getcwd()
				if vim.fn.executable(cwd .. "/venv/bin/python") == 1 then
					return cwd .. "/venv/bin/python"
				elseif vim.fn.executable(cwd .. "/.venv/bin/python") == 1 then
					return cwd .. "/.venv/bin/python"
				else
					return "/usr/bin/python"
				end
			end,
		},
	}
end

return M


-- local dap = require("dap")
-- dap.adapters.python = {
--   type = "executable",
--   command = vim.g.python3_host_prog,
--   args = { "-m", "debugpy.adapter" },
-- }
--
-- dap.configurations.python = {
--   {
--     -- The first three options are required by nvim-dap
--     type = "python", -- the type here established the link to the adapter definition: `dap.adapters.python`
--     request = "launch",
--     name = "Launch file",
--     -- Options below are for debugpy, see https://github.com/microsoft/debugpy/wiki/Debug-configuration-settings for supported options
--     program = "${file}", -- This configuration will launch the current file if used.
--     pythonPath = function()
--       if vim.env.VIRTUAL_ENV then
--         return vim.env.VIRTUAL_ENV .. "/bin/python"
--       end
--       -- debugpy supports launching an application with a different interpreter then the one used to launch debugpy itself.
--       -- The code below looks for a `venv` or `.venv` folder in the current directly and uses the python within.
--       -- You could adapt this - to for example use the `VIRTUAL_ENV` environment variable.
--       local cwd = vim.fn.getcwd()
--       if vim.fn.executable(cwd .. "/venv/bin/python") == 1 then
--         return cwd .. "/venv/bin/python"
--       elseif vim.fn.executable(cwd .. "/.venv/bin/python") == 1 then
--         return cwd .. "/.venv/bin/python"
--       else
--         return "/usr/bin/python"
--       end
--     end,
--   },
-- }
