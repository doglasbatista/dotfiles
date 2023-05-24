-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd.packadd('packer.nvim')

vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- auto close brackets, parens, quotes, etc...
  use 'windwp/nvim-autopairs'

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    -- or                            , branch = '0.1.x',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }

  -- statusline
  use 'hoob3rt/lualine.nvim'

  use 'theprimeagen/harpoon'

  use 'onsails/lspkind.nvim'

  use 'jose-elias-alvarez/null-ls.nvim'

  use 'numToStr/Comment.nvim'

  -- bufferline for neovim
  use 'romgrk/barbar.nvim'
  use 'moll/vim-bbye'

  -- move lines and blocks
  use 'fedepujol/move.nvim'

  -- highlights cursor words and lines
  use 'yamatsum/nvim-cursorline'

  -- file explorer tree
  use 'kyazdani42/nvim-tree.lua'

  -- devicons for neovim
  use 'kyazdani42/nvim-web-devicons'

  -- colorschemas
  use 'ellisonleao/gruvbox.nvim'

  use({
    "folke/trouble.nvim",
    config = function()
      require("trouble").setup {
        icons = false,
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
    end
  })

  -- multiple cursors plugin
  use 'mg979/vim-visual-multi'

  -- display the indention levels with thin vertical lines
  use 'Yggdroot/indentLine'

  use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
  use("nvim-treesitter/playground")
  use("theprimeagen/refactoring.nvim")
  use("mbbill/undotree")
  use("tpope/vim-fugitive")
  use {
    'lewis6991/gitsigns.nvim',
    config = function()
      require('gitsigns').setup()
    end
  }
  use("nvim-treesitter/nvim-treesitter-context");

  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v1.x',
    requires = {
      -- LSP Support
      { 'neovim/nvim-lspconfig' },
      { 'williamboman/mason.nvim' },
      { 'williamboman/mason-lspconfig.nvim' },

      -- Autocompletion
      { 'hrsh7th/nvim-cmp' },
      { 'hrsh7th/cmp-buffer' },
      { 'hrsh7th/cmp-path' },
      { 'saadparwaiz1/cmp_luasnip' },
      { 'hrsh7th/cmp-nvim-lsp' },
      { 'hrsh7th/cmp-nvim-lua' },

      -- Snippets
      { 'L3MON4D3/LuaSnip' },
      { 'rafamadriz/friendly-snippets' },
    }
  }
  -- Installation
  use { 'L3MON4D3/LuaSnip' }
  use {
    'hrsh7th/nvim-cmp',
    config = function()
      require 'cmp'.setup {
        snippet = {
          expand = function(args)
            require 'luasnip'.lsp_expand(args.body)
          end
        },

        sources = {
          { name = 'luasnip' },
          -- more sources
        },
      }
    end
  }
  use { 'saadparwaiz1/cmp_luasnip' }

  use("github/copilot.vim")
  use("eandrju/cellular-automaton.nvim")
  use("laytan/cloak.nvim")
end)
