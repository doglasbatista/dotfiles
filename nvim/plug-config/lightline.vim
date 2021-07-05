set laststatus=2

let g:lightline = {
\ 'colorscheme': 'one',
\   'tabline': {
\     'left': [['explorer_pad'], ['buffers']],
\     'right': [['gitbranch', 'smarttabs']]
\   },
\   'component_expand': {
\     'buffers': 'lightline#bufferline#buffers'
\   },
\   'component_type': {
\     'buffers': 'tabsel'
\   }
\}
