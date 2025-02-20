-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
          'nvim-telescope/telescope.nvim', tag = '0.1.8',
          -- or                            , branch = '0.1.x',
          requires = { {'nvim-lua/plenary.nvim'} }
  }
  use ('theprimeagen/harpoon')
  use ('mbbill/undotree')
  use ('tpope/vim-fugitive')
  use ({
          'ellisonleao/gruvbox.nvim',
          as = 'gruvbox',
          config = function() vim.cmd('colorscheme gruvbox') end
  })
  use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  -- use ({'Shougo/deoplete.nvim',as = 'deoplete', run = ':UpdateRemotePlugins'})
  use {
          'VonHeikemen/lsp-zero.nvim',
          requires = {
                  {'neovim/nvim-lspconfig'},             -- Required
                  {'williamboman/mason.nvim'},           -- Optional
                  {'williamboman/mason-lspconfig.nvim'}, -- Optional
                  -- Autocompletion
                  {'hrsh7th/nvim-cmp'},         -- Required
                  {'hrsh7th/cmp-nvim-lsp'},     -- Required
                  {'hrsh7th/cmp-buffer'},       -- Optional
                  {'hrsh7th/cmp-path'},         -- Optional
                  {'saadparwaiz1/cmp_luasnip'}, -- Optional
                  {'hrsh7th/cmp-nvim-lua'},     -- Optional
                  -- Snippets
                  {'L3MON4D3/LuaSnip'},             -- Required
                  {'rafamadriz/friendly-snippets'}, -- Optional
          }
  }
  use {
          'numToStr/Comment.nvim',
          config = function() require('Comment').setup() end
  }
  use 'm4xshen/autoclose.nvim'
end)
