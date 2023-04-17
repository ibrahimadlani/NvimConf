-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
	-- Telescope (Fuzzy Finder) & Plenary (Dependance de Telescope)
	use { 'nvim-telescope/telescope.nvim', tag = '0.1.1', requires = { {'nvim-lua/plenary.nvim'} } }
	-- GRUVBOX (Color Scheme)
    -- use { 'morhetz/gruvbox', config = function() vim.cmd.colorscheme("gruvbox") end }
	-- TreeSitter (Code Parser & Highlighting)
	use { 'nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'} }
	-- Harpoon (Fuzzy Finder ??? par ThePrimeagen)	
	use{ 'theprimeagen/harpoon'}
	-- UndoTree (Gestion de buffer de suppression)
	use { 'mbbill/undotree' }

	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v2.x',
		requires = {
			-- LSP Support
			{'neovim/nvim-lspconfig'},             -- Required
			{                                      -- Optional
			'williamboman/mason.nvim',
			run = function()
				pcall(vim.cmd, 'MasonUpdate')
			end,
			},
			{'williamboman/mason-lspconfig.nvim'}, -- Optional

			-- Autocompletion
			{'hrsh7th/nvim-cmp'},     -- Required
			{'hrsh7th/cmp-nvim-lsp'}, -- Required
			{'L3MON4D3/LuaSnip'},     -- Required
		}
	}

	use { 'tpope/vim-fugitive' }

    use({ 'rose-pine/neovim', as = 'rose-pine' })
    vim.cmd('colorscheme rose-pine')

end)



