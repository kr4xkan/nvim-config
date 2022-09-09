vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
	use("wbthomason/packer.nvim")

	-- LSP & Completion
	use("onsails/lspkind-nvim")
	use("hrsh7th/cmp-buffer")
    use("hrsh7th/cmp-path")
	use("hrsh7th/cmp-nvim-lsp")
	use("hrsh7th/nvim-cmp")
	use("neovim/nvim-lspconfig")
	use("glepnir/lspsaga.nvim")
	use("L3MON4D3/LuaSnip")
	use("simrat39/rust-tools.nvim")
	use("windwp/nvim-autopairs")

	use("lewis6991/gitsigns.nvim")
	use("glepnir/dashboard-nvim")
	use({
		"kyazdani42/nvim-tree.lua",
		requires = {
			"kyazdani42/nvim-web-devicons",
		},
	})
	use("sbdchd/neoformat")
	use({
		"nvim-telescope/telescope.nvim",
		requires = {
			"nvim-lua/plenary.nvim",
		},
	})
	use({
		"nvim-lualine/lualine.nvim",
		requires = { "kyazdani42/nvim-web-devicons" },
	})
	use("karb94/neoscroll.nvim")
	use("B4mbus/oxocarbon-lua.nvim")
	use("navarasu/onedark.nvim")
	use({
		"nvim-treesitter/nvim-treesitter",
		run = ":TSUpdate",
	})
	use({ "akinsho/bufferline.nvim", tag = "v2.*", requires = "kyazdani42/nvim-web-devicons" })
	use("dstein64/vim-startuptime")

	require("plugins/startup")
end)
