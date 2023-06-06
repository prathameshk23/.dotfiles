-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
-- vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
    -- or                            , branch = '0.1.x',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }


  use { 'alvarosevilla95/luatab.nvim', requires = 'kyazdani42/nvim-web-devicons' }

  use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
  use("nvim-treesitter/nvim-treesitter-context")

  use('nvim-treesitter/playground')
  use('neovim/nvim-lspconfig')

  use('mbbill/undotree')
  use('ThePrimeagen/vim-be-good')
  use('tpope/vim-fugitive')
  use 'nvim-tree/nvim-tree.lua'
  use 'github/copilot.vim'
  use 'ThePrimeagen/git-worktree.nvim'
  use { 'akinsho/toggleterm.nvim', tag = "*" }
  use 'windwp/nvim-autopairs'
  use 'RRethy/vim-illuminate'

  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v1.x',
    requires = {
      -- LSP Support
      { 'neovim/nvim-lspconfig' },             -- Required
      { 'williamboman/mason.nvim' },           -- Optional
      { 'williamboman/mason-lspconfig.nvim' }, -- Optional

      -- Autocompletion
      { 'hrsh7th/nvim-cmp' },         -- Required
      { 'hrsh7th/cmp-nvim-lsp' },     -- Required
      { 'hrsh7th/cmp-buffer' },       -- Optional
      { 'hrsh7th/cmp-path' },         -- Optional
      { 'saadparwaiz1/cmp_luasnip' }, -- Optional
      { 'hrsh7th/cmp-nvim-lua' },     -- Optional

      -- Snippets
      { 'L3MON4D3/LuaSnip' },             -- Required
      { 'rafamadriz/friendly-snippets' }, -- Optional
    }
  }

  use({
    "utilyre/barbecue.nvim",
    tag = "*",
    requires = {
      "SmiteshP/nvim-navic",
      "nvim-tree/nvim-web-devicons", -- optional dependency
    },
    config = function()
      require("barbecue").setup()
    end,
  })

  use "rebelot/kanagawa.nvim"
  use { "bluz71/vim-moonfly-colors", as = "moonfly" }
  use { "catppuccin/nvim", as = "catppuccin" }
  use 'folke/tokyonight.nvim'
  use('nvim-tree/nvim-web-devicons')
  use "akinsho/flutter-tools.nvim"
  use "mrjones2014/nvim-ts-rainbow"
  use('ThePrimeagen/harpoon')
  use('nvim-lua/plenary.nvim')
  use "nvim-lualine/lualine.nvim"
  use "lukas-reineke/indent-blankline.nvim"
  use "folke/zen-mode.nvim"
  use "NvChad/nvim-colorizer.lua"
  use "lewis6991/gitsigns.nvim"
  use "preservim/tagbar"
  use "tpope/vim-commentary"
  use "mfussenegger/nvim-dap"
  use "rcarriga/nvim-dap-python"
  use {
    'goolord/alpha-nvim',
    config = function()
      require 'alpha'.setup(require 'alpha.themes.dashboard'.config)
    end
  }
  use "windwp/nvim-ts-autotag"
  use('jose-elias-alvarez/null-ls.nvim')
  use('MunifTanjim/prettier.nvim')
  use 'andweeb/presence.nvim'
  use("eandrju/cellular-automaton.nvim")

  use {
    "folke/trouble.nvim",
    requires = "nvim-tree/nvim-web-devicons",
    config = function()
      require("trouble").setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
    end
  }
end)
