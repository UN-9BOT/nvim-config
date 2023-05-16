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

" float term
Plugin 'voldikss/vim-floaterm'

" ranger for vim
Plugin 'kevinhwang91/rnvimr'

" smooth scroll
Plugin 'terryma/vim-smooth-scroll'

" autodoc
Plugin 'heavenshell/vim-pydocstring'
Plugin 'vim-scripts/DoxygenToolkit.vim'

"markdown
Plugin 'shime/vim-livedown'

" surround ("' [ { }]')  --> ysiw | cs'" | ds"
Plugin 'tpope/vim-surround'

" auto tab
Plugin 'tpope/vim-sleuth'

" theme
Plugin 'sainnhe/edge'

" last place for reopen file
Plugin 'farmergreg/vim-lastplace'

" for f-key
Plugin 'rhysd/clever-f.vim'

" fast motion
Plugin 'easymotion/vim-easymotion'
" Plugin 'justinmk/vim-sneak'

"fzf finder
Plugin 'nvim-telescope/telescope.nvim'

" blankline (вложенность функций)
Plugin 'lukas-reineke/indent-blankline.nvim'

" resize window
Plugin 'simeji/winresizer'

" auto pairs...
Plugin 'windwp/nvim-autopairs'

" commentary \/
Plugin 'tpope/vim-commentary'

" todo note on left bar
Plugin 'folke/todo-comments.nvim'

" bottom bar
Plugin 'vim-airline/vim-airline'

" icons
" Plugin 'ryanoasis/vim-devicons'
Plugin 'nvim-tree/nvim-web-devicons'

" highlight for func 
Plugin 'nvim-treesitter/nvim-treesitter'

" transparent
Plugin 'tribela/vim-transparent'

"end
call vundle#end()
filetype plugin indent on
