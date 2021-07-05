" better nav for omnicomplete
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")

" use alt + hjkl to resize windows
nnoremap <M-j>    :resize -2<CR>
nnoremap <M-k>    :resize +2<CR>
nnoremap <M-h>    :vertical resize -2<CR>
nnoremap <M-l>    :vertical resize +2<CR>

" alternative ways to escape
" jk or kj
inoremap jk <Esc>
inoremap kj <Esc>
" control-c
nnoremap <C-c> <Esc>

" tab in general mode will move to text buffer
nnoremap <TAB> :bnext<CR>
" shift-tab will go back
nnoremap <S-TAB> :bprevious<CR>

" alternate way to quit
nnoremap <C-Q> :wq!<CR>
" <tab>: completion.
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

" better tabbing
vnoremap < <gv
vnoremap > >gv

" better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

nnoremap <Leader>o o<Esc>^Da
nnoremap <Leader>O O<Esc>^Da
