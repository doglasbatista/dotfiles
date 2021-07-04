" set leader key
let g:mapleader = "\<space>"

" enables syntax highlighing
syntax enable                           
" required to keep multiple buffers open multiple buffers
set hidden                              
" display long lines as just one line
set nowrap                              
" the encoding displayed
set encoding=utf-8                      
" makes popup menu smaller
set pumheight=10                        
" the encoding written to file
set fileencoding=utf-8                  
" show the cursor position all the time
set ruler              			            
" more space for displaying messages
set cmdheight=2                         
" treat dash separated words as a word text object"
set iskeyword+=-                      	
" enable your mouse
set mouse=a                             
" horizontal splits will automatically be below
set splitbelow                          
" vertical splits will automatically be to the right
set splitright                          
" support 256 colors
set t_co=256                            
" so that i can see `` in markdown files
set conceallevel=0                      
" insert 2 spaces for a tab
set tabstop=2                           
" change the number of space characters inserted for indentation
set shiftwidth=2                        
" makes tabbing smarter will realize you have 2 vs 4
set smarttab                            
" converts tabs to spaces
set expandtab                           
" makes indenting smart
set smartindent                         
" good auto indent
set autoindent                          
" always display the status line
set laststatus=0                        
" line numbers
set number                              
" enable highlighting of the current line
set cursorline                          
" tell vim what the background color looks like
set background=dark                     
" always show tabs
set showtabline=2                       
" we don't need to see things like -- insert -- anymore
set noshowmode                          
" this is recommended by coc
set nobackup                            
" this is recommended by coc
set nowritebackup                       
" faster completion
set updatetime=300                      
" by default timeoutlen is 1000 ms
set timeoutlen=500                      
" stop newline continution of comments
set formatoptions-=cro                  
" copy paste between vim and everything else
set clipboard=unnamedplus               
" highlight columns at positions
let &colorcolumn="80,100"
" change color of highlighted columns
highlight ColorColumn ctermbg=gray
" auto source when writing to init.vm alternatively you can run :source $myvimrc
au! bufwritepost $myvimrc source %      

" you can't stop me
cmap w!! w !sudo tee %
