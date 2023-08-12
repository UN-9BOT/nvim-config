"For plugins
filetype off
set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin('~/.config/nvim/bundle')

" Vundle - plugin manager
Plugin 'VundleVim/Vundle.vim'

" LSP / FIX
Plugin 'dense-analysis/ale'
Plugin 'neoclide/coc.nvim'
Plugin 'tpope/vim-dadbod'
Plugin 'honza/vim-snippets'
Plugin 'folke/trouble.nvim'
Plugin 'nvim-lua/plenary.nvim'
" Plugin 'Maan2003/lsp_lines.nvim'  " double diagnostic

 
" float term
Plugin 'voldikss/vim-floaterm'
 
" ranger for vim
Plugin 'kevinhwang91/rnvimr'
" Plugin 'ptzz/lf.vim'
" Plugin 'vifm/vifm.vim'
 
" smooth scroll
Plugin 'terryma/vim-smooth-scroll'

" autodoc
Plugin 'heavenshell/vim-pydocstring'
Plugin 'vim-scripts/DoxygenToolkit.vim'

"markdown
Plugin 'shime/vim-livedown'

" surround ("' [ { }]')  --> ysiw' | cs'" | ds"
Plugin 'tpope/vim-surround'

" auto tab
" Plugin 'tpope/vim-sleuth'

" theme
Plugin 'sainnhe/edge'

" last place for reopen file
Plugin 'farmergreg/vim-lastplace'

" for f-key
Plugin 'rhysd/clever-f.vim'

" fast motion
Plugin 'easymotion/vim-easymotion'
" Plugin 'folke/flash.nvim'   " bug with motion
" Plugin 'justinmk/vim-sneak'

"fzf finder
Plugin 'nvim-telescope/telescope.nvim'
Plugin 'nvim-telescope/telescope-live-grep-args.nvim'
Plugin 'nvim-telescope/telescope-media-files.nvim'

" blankline вложенность функций
Plugin 'lukas-reineke/indent-blankline.nvim'

" resize window
Plugin 'simeji/winresizer'

" auto pairs... brackets rainbow
Plugin 'windwp/nvim-autopairs'
Plugin 'luochen1990/rainbow'

" commentary \/
Plugin 'tpope/vim-commentary'

" todo note on left bar
Plugin 'folke/todo-comments.nvim'

" bottom bar
Plugin 'vim-airline/vim-airline'

" icons
Plugin 'nvim-tree/nvim-web-devicons'
Plugin 'ryanoasis/vim-devicons'

" highlight for func 
Plugin 'nvim-treesitter/nvim-treesitter'

" transparent
Plugin 'tribela/vim-transparent'
" Plugin 'xiyaowong/transparent.nvim'  # bug with inline text for lsp

" nvim in browser
Plugin 'subnut/nvim-ghost.nvim'

" telekasten (obsidian)
Plugin 'renerocksai/telekasten.nvim'

" help keybindings
" Plugin 'liuchengxu/vim-which-key'

" multiple cursor
Plugin 'mg979/vim-visual-multi'

" autocomplete   (and in coc coc-tabnine)
Plugin 'Exafunction/codeium.vim'

" tag bar right
Plugin 'preservim/tagbar'

" marks
Plugin 'chentoast/marks.nvim'

" git signs
Plugin 'lewis6991/gitsigns.nvim'

" lazy git
Plugin 'kdheepak/lazygit.nvim'

" figutive
Plugin 'tpope/vim-fugitive'

" sessions
Plugin 'rmagatti/auto-session'

" smart menu in : ? /
Plugin 'gelguy/wilder.nvim'

" autosave
Plugin '907th/vim-auto-save'

" python import
Plugin 'mgedmin/python-imports.vim'
Plugin 'ludovicchabant/vim-gutentags'
" Plugin 'skywind3000/gutentags_plus'
" Plugin 'dhananjaylatkar/cscope_maps.nvim' " cscope keymaps

" context 
Plugin 'nvim-treesitter/nvim-treesitter-context'

" cursor word
Plugin 'itchyny/vim-cursorword'

" repeat for dot .
Plugin 'tpope/vim-repeat'



"end
call vundle#end()
filetype plugin indent on
