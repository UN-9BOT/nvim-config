nnoremap <leader>wl :Telekasten goto_today<CR>

lua << EOF
require('telekasten').setup{
  home = vim.fn.expand("/home/un9bot/YAD/!share/!obsidian/worklog"), -- Put the name of your notes directory here
}
EOF
