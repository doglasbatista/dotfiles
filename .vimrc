call plug#begin('~/.vim/plugged')
set background=dark
set t_Co=256
" set term=screen-256color
set encoding=utf8
set fileformat=unix
set autoindent
set tabstop=2
set softtabstop=0
set expandtab
set shiftwidth=2
set smarttab
set scrolloff=10
set number
set mouse=a
set noswapfile
set autoread
set ignorecase
set smartcase
set statusline="%f%m%r%h%w [%Y] [0x%02.2B]%< %F%=%4v,%4l %3p%% of %L"
set clipboard=unnamedplus
set hidden
set hlsearch
set splitbelow
set splitright
set listchars=tab:»»,trail:.,nbsp:·
set list
set laststatus=2
set noshowmode
set cursorline
set pastetoggle=<F2>
set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=2
set ignorecase
set timeoutlen=1000 ttimeoutlen=0

colorscheme hybrid_material
" colorscheme photon
" colorscheme pixelmuerto
" colorscheme Monosvkem
" colorscheme blame
"
Plug 'itchyny/lightline.vim'
Plug 'vim-scripts/BufLine'
Plug 'scrooloose/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-fugitive'
Plug 'posva/vim-vue'
Plug 'mileszs/ack.vim'
Plug 'w0rp/ale'
Plug 'jiangmiao/auto-pairs'
Plug 'mhinz/vim-signify'
Plug 'terryma/vim-multiple-cursors'
Plug 'mattn/emmet-vim'
Plug 'pangloss/vim-javascript'
Plug 'isRuslan/vim-es6'
Plug 'stephenway/postcss.vim'
Plug 'Asheq/close-buffers.vim'
Plug 'tpope/vim-commentary'
Plug 'matze/vim-move'
Plug 'kristijanhusak/vim-carbon-now-sh'
Plug 'mxw/vim-jsx'
Plug 'yardnsm/vim-import-cost', { 'do': 'npm install' }
Plug 'leafgarland/typescript-vim'
Plug 'tpope/vim-surround'
Plug 'kristijanhusak/vim-hybrid-material'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }
Plug 'alexlafroscia/deoplete-flow'
Plug 'deoplete-plugins/deoplete-go', { 'do': 'make'}
Plug 'stamblerre/gocode', { 'rtp': 'nvim', 'do': '~/.config/nvim/plugged/gocode/nvim/symlink.sh' }
Plug 'sebastianmarkow/deoplete-rust'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }

if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif
"For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
"Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
" < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
if (has("termguicolors"))
  set termguicolors
endif
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" EMMET
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" let g:user_emmet_expandabbr_key='<Tab>'
" map <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CTRL+C, CTRL+V
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
vmap <C-c> "+yi
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
imap <C-v> <ESC>"+pa
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" IN INSERT OR COMMAND MODE, MOVE NORMALLY BY USING CTRL
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>
cnoremap <C-h> <Left>
cnoremap <C-j> <Down>
cnoremap <C-k> <Up>
cnoremap <C-l> <Right>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" RESIZE CURRENT BUFFER
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <C-l> :vertical resize -5<cr>
nnoremap <C-i> :resize +5<cr>
nnoremap <C-o> :resize -5<cr>
nnoremap <C-h> :vertical resize +5<cr>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" REMOVE TRAILING WHITESPACE ON SAVE
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd BufWritePre * :%s/\s\+$//e
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" BUFLINE
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <S-j> :bprev<CR>
map <S-k> :bnext<CR>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CTRLP
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ctrlp_custom_ignore = 'node_modules\|git\|dist\|coverage'
let g:ctrlp_use_caching=0
let g:ctrlp_show_hidden = 1
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" VIM-MOVE
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:move_key_modifier = 'C'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" COLORCOLUMN
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let &colorcolumn="80,100,120"
highlight ColorColumn ctermbg=gray
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NERDTREE
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <C-b> :NERDTreeToggle<cr>
let NERDTreeShowHidden=1
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ACK
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <C-f> :Ack<space>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" DEOPLETE
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" WILDMENU
set completeopt+=noinsert
set completeopt+=noselect

let g:deoplete#file#enable_buffer_path=1
let g:deoplete#enable_at_startup = 1
let g:deoplete#complete_method = "omnifunc"
" TERNJS
let g:deoplete#sources#ternjs#types = 1
let g:deoplete#sources#ternjs#depths = 1
let g:deoplete#sources#ternjs#include_keywords = 1
let g:deoplete#sources#ternjs#sort = 1
"Add extra filetypes
let g:deoplete#sources#ternjs#filetypes = [
                \ 'jsx',
                \ 'javascript.jsx',
                \ 'vue',
                \ 'js',
                \ 'ts',
                \ '...',
                \ ]

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set wildmenu
set wildmode=longest,list
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" FILEPATH AUTOCOMPLETE
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set autochdir
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" MAPLEADER
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader=" "

call plug#end()
