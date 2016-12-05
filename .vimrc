call plug#begin('~/.vim/plugged')

:set tabstop=2 softtabstop=0 expandtab shiftwidth=2 smarttab number mouse=a noswapfile autoread
:set ignorecase
:set smartcase
:set statusline="%f%m%r%h%w [%Y] [0x%02.2B]%< %F%=%4v,%4l %3p%% of %L"


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
Plug 'scrooloose/nerdtree'
Plug 'kien/ctrlp.vim'
Plug 'dyng/ctrlsf.vim'
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rails'


syntax on
:set t_Co=256
colorscheme pixelmuerto

:let g:vimfiler_as_default_explorer = 1

nmap kb :NERDTreeToggle<cr>
nmap <C-p> :CtrlP
nmap <C-f> :CtrlSF



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
