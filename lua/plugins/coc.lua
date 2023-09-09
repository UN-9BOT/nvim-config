-- Having longer updatetime (default is 4000 ms = 4s) leads to noticeable
-- delays and poor user experience
vim.opt.updatetime = 300

-- Always show the signcolumn, otherwise it would shift the text each time
-- diagnostics appeared/became resolved
vim.opt.signcolumn = "yes"
local b = vim.keymap.set

b("i", "<c-space>", "coc#refresh()", { silent = true, expr = true })

b("n", "gd", "<Plug>(coc-definition)", { silent = true })
b("n", "gy", "<Plug>(coc-type-definition)", { silent = true })
b("n", "gi", "<Plug>(coc-implementation)", { silent = true })
b("n", "gr", "<Plug>(coc-references)", { silent = true })

b("n", "<leader>rn", "<Plug>(coc-rename)", { silent = true })

CheckBackspace = function()
  local col = vim.fn.col(".") - 1
  return col == 0 or vim.fn.getline("."):sub(col, col):match("%s") ~= nil  
end

local opts = { silent = true, noremap = true, expr = true, replace_keycodes = false }
b("i", "<CR>", [[coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"]], opts)
-- keyset("i", "<TAB>", 'coc#pum#visible() ? coc#pum#next(1) : v:lua.check_back_space() ? "<TAB>" : coc#refresh()', opts)
-- keyset("i", "<S-TAB>", [[coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"]], opts)

function _G.show_docs()
	local cw = vim.fn.expand("<cword>")
	if vim.fn.index({ "vim", "help" }, vim.bo.filetype) >= 0 then
		vim.api.nvim_command("h " .. cw)
	elseif vim.api.nvim_eval("coc#rpc#ready()") then
		vim.fn.CocActionAsync("doHover")
	else
		vim.api.nvim_command("!" .. vim.o.keywordprg .. " " .. cw)
	end
end
b("n", "gk", "<CMD>lua _G.show_docs()<CR>", { silent = true })
b("n", "<F4>", ":CocCommand editor.action.formatDocument<CR>", { silent = true })

local opts = { silent = true, nowait = true }
b("n", "ga", "<Plug>(coc-codeaction-line)", opts)
b("x", "ga", "<Plug>(coc-codeaction-selected)", opts)
b("n", "gA", "<Plug>(coc-codeaction-source)", opts)

b("n", "gj", ":TroubleToggle<CR><c-k>", { silent = true })

vim.cmd([[inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ CheckBackspace() ? "\<TAB>" :
      \ coc#refresh()

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:coc_snippet_next = '<tab>']])


local function CheckBackspace()
	local col = vim.fn.col(".") - 1
	return col == 0 or vim.fn.getline("."):sub(col, col):match("%s") ~= nil
end

vim.g.coc_snippet_next = "<TAB>"
vim.g.coc_snippet_prev = "<S-TAB>"


b("n", "<leader>y", ":<C-u>CocList -A --normal yank<CR>", { silent = true })


-- tests
b("n", "<leader>ptt", "<cmd> CocCommand pyright.singleTest<CR>", { silent = true })
b("n", "<leader>ptf", "<cmd> CocCommand pyright.fileTest<CR>", { silent = true })
