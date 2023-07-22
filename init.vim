" for poweron plugins
source ~/.config/nvim/plugins.vim

" mapping standart key
" source ~/.config/nvim/plugins/vim-which-key.vim
source ~/.config/nvim/maps-standart.vim

" custom settings for nvim
source ~/.config/nvim/settings.vim
source ~/.config/nvim/functions.vim

" for all plugins
source ~/.config/nvim/plugins/lsp-map.vim
source ~/.config/nvim/plugins/nvim-autopairs.vim
source ~/.config/nvim/plugins/telescope.vim
source ~/.config/nvim/plugins/todo-comments.vim
source ~/.config/nvim/plugins/vim-airline.vim
source ~/.config/nvim/plugins/vim-easymotion.vim
source ~/.config/nvim/plugins/vim-floaterm.vim
source ~/.config/nvim/plugins/indent-blankline.vim
source ~/.config/nvim/plugins/rnvimr.vim
source ~/.config/nvim/plugins/treesitter.vim
source ~/.config/nvim/plugins/doxygen.vim
source ~/.config/nvim/plugins/pydoc.vim
source ~/.config/nvim/plugins/livedown.vim
source ~/.config/nvim/plugins/trouble.vim
source ~/.config/nvim/plugins/telekasten.vim
source ~/.config/nvim/plugins/autopair.vim
source ~/.config/nvim/plugins/codeium.vim
source ~/.config/nvim/plugins/vista.vim
source ~/.config/nvim/plugins/ghost.vim



lua << EOF
  require("telescope").load_extension("live_grep_args")
EOF

