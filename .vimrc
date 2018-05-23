call plug#begin('~/.vim/plugged')

:set encoding=utf8
:set fileformat=unix
:set autoindent
:set tabstop=2
:set softtabstop=0
:set expandtab
:set shiftwidth=2
:set smarttab
:set scrolloff=10
:set number
:set mouse=a
:set noswapfile
:set autoread
:set ignorecase
:set smartcase
:set statusline="%f%m%r%h%w [%Y] [0x%02.2B]%< %F%=%4v,%4l %3p%% of %L"
:set clipboard=unnamedplus
:set hidden
:set hlsearch
:set splitbelow
:set splitright
:set listchars=tab:»»,trail:.,nbsp:·
:set list
:set laststatus=2
:set noshowmode


Plug 'junegunn/vim-easy-align'
Plug 'mattn/emmet-vim'
Plug 'https://github.com/junegunn/vim-github-dashboard.git'
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }
Plug 'fatih/vim-go', { 'tag': '*' }
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug '~/my-prototype-plugin'
Plug 'Shougo/vimfiler.vim'
Plug 'vim-ruby/vim-ruby'
Plug 'fatih/vim-go'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'dyng/ctrlsf.vim'
Plug 'tpope/vim-rails'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'https://github.com/darthmall/vim-vue'
Plug 'terryma/vim-multiple-cursors'
Plug 'itchyny/lightline.vim'
Plug 'bronson/vim-trailing-whitespace'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-signify'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'
Plug 'bling/vim-airline'
Plug 'airblade/vim-gitgutter'
Plug 'JulesWang/css.vim'
Plug 'cakebaker/scss-syntax.vim'


colorscheme pixelmuerto



let g:vimfiler_as_default_explorer = 1
let g:jsx_ext_required = 0
let g:ctrlp_by_filename = 1
let g:airline_powerline_fonts = 1
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = '▶'
let g:airline#extensions#tabline#right_sep = '◀'
let g:airline_symbols#maxlinenr = '☰'
let g:airline_theme = 'dark'

nmap kb :NERDTreeToggle<cr>
nmap <C-f> :CtrlSF
nnoremap <C-y> "+y
map <S-Left> :bprev<CR>
map <S-Right> :bnext<CR>



highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()


function! TrimWhiteSpace()
  %s/\s\+$//e
endfunction
autocmd BufWritePre     * :call TrimWhiteSpace()


call plug#end()
