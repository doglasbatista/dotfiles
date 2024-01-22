local builtin = require('telescope.builtin')
vim.keymap.set('n', '<C-p>', builtin.find_files, {})
vim.keymap.set('n', '<C-f>', ":Telescope live_grep<CR>", {})
vim.keymap.set('n', '<leader>vh', builtin.help_tags, {})

vim.keymap.set('n', '<leader>/', function()
  -- You can pass additional configuration to telescope to change theme, layout, etc.
  require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
    winblend = 10,
    previewer = false,
  })
end, { desc = '[/] Fuzzily search in current buffer' })

require('telescope').setup {
  defaults = {
    file_ignore_patterns = {
      -- "/.*node_modules",
      -- "/.*dist",
      "node_modules",
      "dist",
      "**/node_modules",
      "**/dist",
      "**/vendor",
      "**/public",
    }
  },
  extensions = {
    fzy_native = {
      override_generic_sorter = false,
      override_file_sorter = true,
    }
  }
}
require('telescope').load_extension('fzy_native')
