local M = {
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = 'nvim-tree/nvim-web-devicons'
}

M.config = function()
    require("bufferline").setup({
        options = {
            groups = {
                options = {
                    toggle_hidden_on_enter = true -- when you re-enter a hidden group this options re-opens that group so the buffer is visible
                },
                items = {
                    {
                        name = "", -- Mandatory
                        highlight = { underline = true, sp = "blue" }, -- Optional
                        priority = 2, -- determines where it will appear relative to other groups (Optional)
                        matcher = function(buf) -- Mandatory
                            return buf.name:match('test_') or buf.name:match('%_test') or buf.name:match('mountebank')
                        end,
                        -- separator = { -- Optional
                        --     style = require('bufferline.groups').separator.tab
                        -- },
                    },
                    {
                        name = "SQL",
                        highlight = { undercurl = true, sp = "green" },
                        auto_close = false, -- whether or not close this group if it doesn't contain the current buffer
                        matcher = function(buf)
                            return buf.name:match('%.sql')
                        end,
                        -- separator = { -- Optional
                        --     style = require('bufferline.groups').separator.tab
                        -- },
                    },
                    {
                        name = "py",
                        highlight = { sp = "red" },
                        auto_close = false, -- whether or not close this group if it doesn't contain the current buffer
                        matcher = function(buf)
                            return buf.name:match('.py')
                        end,
                        -- separator = { -- Optional
                        --     style = require('bufferline.groups').separator.tab
                        -- },
                    },
                    {
                        name = "doc",
                        highlight = { sp = "yellow" },
                        auto_close = false, -- whether or not close this group if it doesn't contain the current buffer
                        matcher = function(buf)
                            return buf.name:match('.toml') or buf.name:match('.md')
                        end,
                        -- separator = { -- Optional
                        --     style = require('bufferline.groups').separator.tab
                        -- },
                    },

                }
            }
        }
    })

    vim.opt.termguicolors = true


    -- for move in buffers
    local b = vim.keymap.set
    local opts = { noremap = true, silent = true }
    b("n", "<a-,>", "<Cmd>BufferLineCyclePrev<CR>", opts)
    b("n", "<a-.>", "<Cmd>BufferLineCycleNext<CR>", opts)
end

return M
