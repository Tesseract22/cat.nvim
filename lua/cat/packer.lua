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
    use {
	"williamboman/mason.nvim",
	"williamboman/mason-lspconfig.nvim",
	"neovim/nvim-lspconfig",
	"hrsh7th/nvim-cmp",
	"hrsh7th/cmp-nvim-lsp",
	"hrsh7th/cmp-buffer",

    }

    use "nvim-lua/plenary.nvim"
    use({ "m00qek/baleia.nvim", tag = "v1.3.0" })
    use({"ej-shafran/compile-mode.nvim", tag = "v5.*"})
    use 'sindrets/diffview.nvim'
    use({
	"iamcco/markdown-preview.nvim",
	run = function() vim.fn["mkdp#util#install"]() end,
    })
    use {
	"windwp/nvim-autopairs",
	event = "InsertEnter",
	config = function()
	    require("nvim-autopairs").setup {}
	end
    }
    use 'paretje/nvim-man'
    use 'NeogitOrg/neogit'
    use {
	'nvim-lualine/lualine.nvim',
	requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }

end)


