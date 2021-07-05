call plug#begin('~/.config/nvim/autoload/plugged')

" better syntax support
Plug 'sheerun/vim-polyglot'

" auto pairs for '(' '[' '{'
Plug 'jiangmiao/auto-pairs'

" theme
Plug 'logico/typewriter-vim'
Plug 'kristijanhusak/vim-hybrid-material'

Plug 'neoclide/coc.nvim', {'branch': 'release'}
" :CocInstall coc-json coc-python coc-snippets coc-vimlsp coc-tsserver coc-eslint coc-prettier coc-css coc-styled-components coc-conjure

" comment stuff using <g-c>
Plug 'tpope/vim-commentary'

" multiple cursors plugin
Plug 'mg979/vim-visual-multi'

" status line
Plug 'itchyny/lightline.vim'
Plug 'mengelbrecht/lightline-bufferline'

" fzf
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'

" git integration
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'

" clojure development
Plug 'Olical/aniseed'
Plug 'Olical/conjure'
Plug 'tpope/vim-dispatch'
Plug 'clojure-vim/vim-jack-in'
Plug 'radenling/vim-dispatch-neovim'
Plug 'jlesquembre/coc-conjure'

" emmet support
Plug 'mattn/emmet-vim'

" closse buffers easily
Plug 'Asheq/close-buffers.vim'

" move line and selections up and down
Plug 'matze/vim-move'

" display indention level
Plug 'Yggdroot/indentLine'

"styled-components support
Plug 'styled-components/vim-styled-components'

" distraction free writing 
Plug 'junegunn/goyo.vim'

call plug#end()
