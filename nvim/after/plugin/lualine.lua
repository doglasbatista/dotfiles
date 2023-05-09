local status_ok, lualine = pcall(require, "lualine")
if not status_ok then
	return
end

local mode = {
	"mode",
	fmt = function(str)
		return " " .. str .. " "
	end,
}

local branch = {
	"branch",
	icons_enabled = true,
	icon = "",
}

lualine.setup({
	options = {
		icons_enabled = true,
		-- theme = "solarized",
		theme = "gruvbox",
		-- theme = "nord",
		-- theme = "ayu_light",
		component_separators = { left = "", right = "" },
		section_separators = { left = "", right = "" },
		disabled_filetypes = { "alpha", "dashboard", "NvimTree", "Outline" },
		always_divide_middle = true,
	},
	sections = {
		lualine_a = { mode },
		lualine_b = { branch },
    lualine_c = {
      { "filename", file_status = true, path = 1 },
      { "diff" },
      -- {
      --  "diagnostics",
      --  sources = { "nvim_lsp" },
      --  sections = { "error", "warn", "info", "hint" },
      --  symbols = { error = "E", warn = "W", info = "I", hint = "H" },
      -- },
    },
		-- lualine_x = { "encoding", "fileformat", "filetype" },
    lualine_x = { "encoding", "fileformat", "filetype" },
    lualine_y = {},
    lualine_z = { "location" },
	},
	inactive_sections = {
		lualine_a = {},
		lualine_b = {},
		lualine_c = {},
		lualine_x = {},
		lualine_y = {},
		lualine_z = {},
	},
	tabline = {},
  extensions = { "fzf", "nvim-tree", "fugitive" },
})
