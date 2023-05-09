local cmd = vim.cmd

cmd([[set background=dark]])
cmd([[colorscheme gruvbox]])

require("gruvbox").setup({
	contrast = "soft",
})
