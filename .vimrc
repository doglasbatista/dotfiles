call plug#begin('~/.vim/plugged')

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


Plug 'junegunn/vim-easy-align'
Plug 'mattn/emmet-vim'
Plug 'junegunn/vim-github-dashboard'
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }
Plug 'nsf/gocode'
Plug '~/my-prototype-plugin'
Plug 'vim-ruby/vim-ruby'
Plug 'fatih/vim-go'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'dyng/ctrlsf.vim'
Plug 'tpope/vim-rails'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'posva/vim-vue'
Plug 'itchyny/lightline.vim'
Plug 'vim-scripts/BufLine'
Plug 'bronson/vim-trailing-whitespace'
Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-signify'
Plug 'JulesWang/css.vim'
Plug 'cakebaker/scss-syntax.vim'
Plug 'mileszs/ack.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'matze/vim-move'
Plug 'ap/vim-css-color'
Plug 'stephenway/postcss.vim'
Plug 'maralla/completor.vim'
Plug 'w0rp/ale'
Plug 'fxn/vim-monochrome'
Plug 'kristijanhusak/vim-carbon-now-sh'
Plug 'metakirby5/codi.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'janko-m/vim-test'
Plug 'Asheq/close-buffers.vim'
Plug 'tpope/vim-surround'
Plug '~/.fzf'
Plug 'danro/rename.vim'

colorscheme pixelmuerto

let &colorcolumn="80,100"

let g:vimfiler_as_default_explorer = 1
let g:jsx_ext_required = 0
let g:ctrlp_custom_ignore = 'node_modules\|git'
let g:ctrlp_use_caching=0
let g:move_key_modifier = 'C'
let g:ctrlp_show_hidden = 1

nmap <C-b> :NERDTreeToggle<cr>
nmap <C-f> :Ack<space>
nnoremap <C-y> "+y
map <S-j> :bprev<CR>
map <S-k> :bnext<CR>
vmap <C-c> "+yi
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
imap <C-v> <ESC>"+pa

" In insert or command mode, move normally by using Ctrl
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>
cnoremap <C-h> <Left>
cnoremap <C-j> <Down>
cnoremap <C-k> <Up>
cnoremap <C-l> <Right>

" resize current buffer by +/- 5
nnoremap <C-l> :vertical resize -5<cr>
nnoremap <C-i> :resize +5<cr>
nnoremap <C-o> :resize -5<cr>
nnoremap <C-h> :vertical resize +5<cr>

highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()
autocmd BufEnter * lcd %:p:h
highlight ColorColumn ctermbg=gray

function! TrimWhiteSpace()
  %s/\s\+$//e
endfunction
autocmd BufWritePre     * :call TrimWhiteSpace()

call plug#end()
