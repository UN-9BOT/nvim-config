" telescope bind
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
vnoremap <leader>fv <cmd>Telescope grep_string<CR>

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
		},
  },
}
EOF
