vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	  -- Packer can manage itself
	  use 'wbthomason/packer.nvim'
	  use     {
		  'nvim-telescope/telescope.nvim', tag = '0.1.8',
		  -- or                            , branch = '0.1.x',
		  requires = { {'nvim-lua/plenary.nvim'} }
	  }

	  use({ 'rose-pine/neovim', as = 'rose-pine' })
	  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
	  use('mbbill/undotree')
	  use({'VonHeikemen/lsp-zero.nvim', branch = 'v4.x'})
	  use({'neovim/nvim-lspconfig'})
	  use {
		  "williamboman/mason.nvim",
		  "williamboman/mason-lspconfig.nvim",
		  "neovim/nvim-lspconfig",
		  "hrsh7th/nvim-cmp",
		  "hrsh7th/cmp-nvim-lsp",
		  "hrsh7th/cmp-buffer",

	  }
  end)
