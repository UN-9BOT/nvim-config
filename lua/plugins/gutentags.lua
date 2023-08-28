-- enable gtags module
vim.g.gutentags_modules = {'ctags'} 

-- if vim.fn.executable('gtags-cscope') and vim.fn.executable('gtags') then
--   vim.g.gutentags_modules:add('gtags_cscope')
-- end

-- config project root markers
vim.g.gutentags_project_root = {'.git'}

-- generate databases in cache directory 
vim.g.gutentags_cache_dir = vim.fn.expand('~/.cache/tags')

-- change focus to quickfix window after search
vim.g.gutentags_plus_switch = 1

-- ignore
vim.g.gutentags_ctags_exclude = {'vendor/*', 'tmp/*', 'log/*', 'coverage/*', 'doc/*', '.mypy_cache', '.venv'}

-- set statusline
vim.opt.statusline:append('%{gutentags#statusline()}') 

-- mappings
vim.api.nvim_set_keymap("n", "<leader>i", ":ImportName<CR>", {noremap = true})
