" <C-n>/<Down>	Next item
" <C-p>/<Up>	Previous item
" <CR>	Confirm selection
" <C-x>	Go to file selection as a split
" <C-v>	Go to file selection as a vsplit
" <C-u>	Scroll up in preview window
" <C-d>	Scroll down in preview window
" <C-f>	Scroll left in preview window
" <C-k>	Scroll right in preview window
" <C-/>	Show mappings for picker actions (insert mode)
" ?	Show mappings for picker actions (normal mode)
" <C-c>	Close telescope
" <Esc>	Close telescope (in normal mode)


" telescope bind
nnoremap <leader>f <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>g <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>b <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>v <cmd>lua require('telescope.builtin').grep_strings()<cr>
vnoremap <leader>v <cmd>lua require('telescope.builtin').grep_strings()<cr>

nnoremap <leader>c <cmd>lua require('telescope.builtin').registers()<cr>
vnoremap <leader>c xh<cmd>lua require('telescope.builtin').registers()<cr>
nnoremap <leader>/ <cmd>lua require('telescope.builtin').current_buffer_fuzzy_find()<cr>
nnoremap <leader>j <cmd>lua require('telescope.builtin').diagnostics()<cr>

lua << EOF
require('telescope').setup{
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
}
require("telescope").load_extension("live_grep_args")
EOF


