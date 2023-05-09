-- remove whitespace on save
vim.cmd([[au BufWritePre * :%s/\s\+$//e]])

local options = {
  -- add incremental search highlight
  incsearch = true,
  -- creates a backup file
  backup = false,
  -- allows neovim to access the system clipboard
  clipboard = "unnamedplus",
  -- more space in the neovim command line for displaying messages
  cmdheight = 2,
  -- mostly just for cmp
  completeopt = { "menuone", "noselect" },
  -- so that `` is visible in markdown files
  conceallevel = 0,
  -- the encoding written to a file
  fileencoding = "utf-8",
  -- highlight all matches on previous search pattern
  hlsearch = true,
  -- ignore case in search patterns
  ignorecase = true,
  -- allow the mouse to be used in neovim
  mouse = "a",
  -- always show tabs
  showtabline = 2,
  -- smart case
  smartcase = true,
  -- make indenting smarter again
  smartindent = true,
  -- force all horizontal splits to go below current window
  splitbelow = true,
  -- force all vertical splits to go to the right of current window
  splitright = true,
  -- don't use swapfile
  swapfile = false,
  -- highlight matching parenthesis
  showmatch = true,
  -- enable folding (default 'foldmarker')
  foldmethod = 'marker',
  -- line lenght marker at 80 columns
  colorcolumn = '80',
  -- enable persistent undo
  -- undofile = true,
  -- faster completion (4000ms default)
  updatetime = 50,
  -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
  writebackup = false,
  -- convert tabs to spaces
  expandtab = true,
  -- the number of spaces inserted for each indentation
  shiftwidth = 2,
  -- insert 2 spaces for a tab
  tabstop = 2,
  -- highlight the current line
  cursorline = true,
  -- set numbered lines
  number = true,
  -- set relative numbered lines
  relativenumber = true,
  -- set number column width to 2 { default 4 }
  numberwidth = 2,
  -- always show the sign column, otherwise it would shift the text each time
  signcolumn = "yes",
  -- display lines as one long line
  wrap = false,
  -- is one of my fav
  scrolloff = 8,
  sidescrolloff = 8,
  -- the font used in graphical neovim applications
  guifont = "monospace:h17",
  -----------------------------------------------------------
  -- Memory, CPU
  -----------------------------------------------------------
  -- enable background buffers
  hidden = true,
  -- remember n lines in history
  history = 100,
  -- faster scrolling
  lazyredraw = true,
  -- max column for syntax highlight
  synmaxcol = 240,
}

vim.opt.shortmess:append "c"

for k, v in pairs(options) do
  vim.opt[k] = v
end
