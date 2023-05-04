"For plugins
filetype off
set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin('~/.config/nvim/bundle')

" plugin manager
Plugin 'VundleVim/Vundle.vim'

"lsp and autocomplete
Plugin 'dense-analysis/ale'
Plugin 'prabirshrestha/vim-lsp' " keys
Plugin 'mattn/vim-lsp-settings' " setup in :Lsp
Plugin 'rhysd/vim-lsp-ale' "more linters ...
Plugin 'prabirshrestha/async.vim' " Completition 
Plugin 'prabirshrestha/asyncomplete.vim' " Completition 
Plugin 'prabirshrestha/asyncomplete-lsp.vim' " Completition 
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'thomasfaingnaert/vim-lsp-snippets'
Plugin 'thomasfaingnaert/vim-lsp-ultisnips'

" async tasks
Plugin 'skywind3000/asynctasks.vim'
"Plugin 'skywind3000/asyncrun.vim'
Plugin 'skywind3000/asyncrun.extra'
Plugin 'nvim-lua/plenary.nvim'

" commentary \/
Plugin 'tpope/vim-commentary'

" theme
Plugin 'sainnhe/edge'
Plugin 'rebelot/kanagawa.nvim'

" todo note on left bar
Plugin 'folke/todo-comments.nvim'

" bottom bar
Plugin 'vim-airline/vim-airline'

" icons in nerdtree and explorer
Plugin 'ryanoasis/vim-devicons'

" highlight for func 
Plugin 'nvim-treesitter/nvim-treesitter'

" custom popup window for another plugins
Plugin 'nvim-lua/popup.nvim'

" auto pairs...
Plugin 'windwp/nvim-autopairs'

" float term
Plugin 'voldikss/vim-floaterm'


" last place for reopen file
Plugin 'farmergreg/vim-lastplace'

" tagbar
Plugin 'liuchengxu/vista.vim'

" dox comment
Plugin 'vim-scripts/DoxygenToolkit.vim'

" for f-key
Plugin 'rhysd/clever-f.vim'

" fast motion
Plugin 'easymotion/vim-easymotion'
" Plugin 'justinmk/vim-sneak'

"fzf finder
Plugin 'nvim-telescope/telescope.nvim', { 'tag': '0.1.1' }

" blankline
Plugin 'lukas-reineke/indent-blankline.nvim'

" resize window
Plugin 'simeji/winresizer'

" ranger
Plugin 'kevinhwang91/rnvimr'

" smooth scroll
Plugin 'terryma/vim-smooth-scroll'

" autodoc
Plugin 'kkoomen/vim-doge'

"end
call vundle#end()
filetype plugin indent on
