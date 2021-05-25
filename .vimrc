call plug#begin('~/.vim/plugged')
set background=dark
set t_Co=256
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

" CLOJURE CONFIG
Plug 'Olical/aniseed'
Plug 'Olical/conjure'
Plug 'tpope/vim-dispatch'
Plug 'clojure-vim/vim-jack-in'
Plug 'radenling/vim-dispatch-neovim'
" CLOJURE CONFIG

Plug 'itchyny/lightline.vim'
Plug 'vim-scripts/BufLine'
Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'
Plug 'tpope/vim-fugitive'
Plug 'mileszs/ack.vim'
Plug 'dense-analysis/ale'
Plug 'jiangmiao/auto-pairs'
Plug 'mhinz/vim-signify'
Plug 'terryma/vim-multiple-cursors'
Plug 'mattn/emmet-vim'
Plug 'pangloss/vim-javascript'
Plug 'isRuslan/vim-es6'
Plug 'Asheq/close-buffers.vim'
Plug 'tpope/vim-commentary'
Plug 'matze/vim-move'
Plug 'kristijanhusak/vim-carbon-now-sh'
Plug 'mxw/vim-jsx'
Plug 'leafgarland/typescript-vim'
Plug 'tpope/vim-surround'
Plug 'kristijanhusak/vim-hybrid-material'
Plug 'Yggdroot/indentLine'
Plug 'reasonml-editor/vim-reason-plus'
Plug 'tasn/vim-tsx'
Plug 'jxnblk/vim-mdx-js'
Plug 'styled-components/vim-styled-components'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" :CocInstall coc-tsserver coc-eslint coc-json coc-prettier coc-css coc-styled-components


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
" FZF
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:fzf_history_dir = '~/.local/share/fzf-history'

map <C-p> :Files<CR>
map <C-f> :Rg<CR>

" Border color
let g:fzf_layout = {'up':'~90%', 'window': { 'width': 0.8, 'height': 0.8,'yoffset':0.5,'xoffset': 0.5, 'highlight': 'Todo', 'border': 'sharp' } }

let $FZF_DEFAULT_OPTS = '--layout=reverse --info=inline'
let $FZF_DEFAULT_COMMAND="rg --files --hidden"


" Customize fzf colors to match your color scheme
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

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
" VIM-MOVE
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:move_key_modifier = 'C'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" COLORCOLUMN
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let &colorcolumn="80,100"
highlight ColorColumn ctermbg=gray
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NERDTREE
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <C-b> :NERDTreeToggle<cr>
let NERDTreeShowHidden=1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" WILDMENU
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set completeopt+=noinsert
set completeopt+=noselect

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set wildmenu
set wildmode=longest,list

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" MAPLEADER
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader=" "
let maplocalleader = " "

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" VIM FOLDING
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Fold all except current cursor and keep cursor position
nnoremap <leader>zv :normal mazMzv`a<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" LanguageClient-neovim COC
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:LanguageClient_serverCommands = {
    \ 'rust': ['~/.cargo/bin/rustup', 'run', 'stable', 'rls'],
    \ 'javascript': ['/usr/local/bin/javascript-typescript-stdio'],
    \ 'javascript.jsx': ['tcp://127.0.0.1:2089'],
    \ 'python': ['/usr/local/bin/pyls'],
    \ 'ruby': ['~/.rbenv/shims/solargraph', 'stdio'],
    \ }

xmap <leader>gd <Plug>(coc-definition)
nmap <leader>gd <Plug>(coc-definition)
inoremap <silent><expr> <c-space> coc#refresh()
nnoremap <silent> Q :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ALE
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ale_linters = {
      \ 'clojure': ['clj-kondo']
      \}

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" PRETTIER
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
autocmd BufWritePre * :CocCommand prettier.formatFile

call plug#end()

let g:iced_enable_default_key_mappings = v:true
