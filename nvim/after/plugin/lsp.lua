require("mason.settings").set({ ui = { border = vim.g.border_style } })

local lsp = require("lsp-zero").preset({ name = "recommended" })

-- Fix Undefined global 'vim'
lsp.nvim_workspace()

lsp.on_attach(function(client, bufnr)
  local opts = { buffer = bufnr, remap = false }

  vim.keymap.set("n", "<leader>gd", function()
    vim.lsp.buf.definition()
  end, opts)
  vim.keymap.set("n", "K", function()
    vim.lsp.buf.hover()
  end, opts)
  vim.keymap.set("n", "<leader>vws", function()
    vim.lsp.buf.workspace_symbol()
  end, opts)
  vim.keymap.set("n", "[d", function()
    vim.diagnostic.goto_next()
  end, opts)
  vim.keymap.set("n", "]d", function()
    vim.diagnostic.goto_prev()
  end, opts)
  vim.keymap.set("n", "<leader>ca", function()
    vim.lsp.buf.code_action()
  end, opts)
  vim.keymap.set("n", "<leader>vrr", function()
    vim.lsp.buf.references()
  end, opts)
  vim.keymap.set("n", "<leader>rn", function()
    vim.lsp.buf.rename()
  end, opts)
  vim.keymap.set("i", "<C-h>", function()
    vim.lsp.buf.signature_help()
  end, opts)
end)

lsp.ensure_installed({
  -- 'tsserver',
  -- 'typescript-language-server',
  -- 'rust_analyzer',
  -- 'astro',
  -- 'volar',
})

-- lsp.format_on_save({
-- 	format_opts = { async = true },
-- 	servers = {
-- 		["null-ls"] = { "javascript", "typescript", "lua", "astro", "vue", "css", "json" },
-- 	},
-- })

local cmp = require("cmp")
cmp.setup({
  formatting = { format = require("lspkind").cmp_format({ mode = "symbol" }) },
})

local cmp_select = { behavior = cmp.SelectBehavior.Select }
local cmp_mappings = lsp.defaults.cmp_mappings({
  ["<C-p>"] = cmp.mapping.select_prev_item(cmp_select),
  ["<C-n>"] = cmp.mapping.select_next_item(cmp_select),
  ["<C-y>"] = cmp.mapping.confirm({ select = true }),
  -- ["<C-Space>"] = cmp.mapping.complete(),
  ["<C-Space>"] = cmp.mapping(cmp.mapping.complete(), { "i", "c" }),
})

cmp_mappings["<Tab>"] = nil
cmp_mappings["<S-Tab>"] = nil

lsp.setup_nvim_cmp({
  mapping = cmp_mappings,
})

-- local null_ls = require("null-ls")
-- null_ls.setup({
-- 	sources = {
-- 		null_ls.builtins.formatting.prettier.with({
-- 			prefer_local = "node_modules/.bin",
-- 			extra_filetypes = { "astro" },
-- 		}),
-- 		null_ls.builtins.formatting.stylua,
-- 	},
-- })

lsp.set_preferences({
  suggest_lsp_servers = false,
  sign_icons = {
    error = "E",
    warn = "W",
    hint = "H",
    info = "I",
  },
})

lsp.setup()

vim.diagnostic.config({
  virtual_text = true,
})
