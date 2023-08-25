-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- File navigation
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.2',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }
  use('theprimeagen/harpoon')

  -- Themes
  use({ 'rose-pine/neovim', as = 'rose-pine' })
  use('Mofiqul/dracula.nvim')
  use {"xero/miasma.nvim"}

  -- treesitter
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use('p00f/nvim-ts-rainbow')

  -- LSP
  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v2.x',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},             -- Required
		  {'williamboman/mason.nvim'},           -- Optional
		  {'williamboman/mason-lspconfig.nvim'}, -- Optional

		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},     -- Required
		  {'hrsh7th/cmp-nvim-lsp'}, -- Required
		  {'L3MON4D3/LuaSnip'},     -- Required
	  }
  }
  use('onsails/lspkind.nvim')

  -- Coding XP
  use('m4xshen/autoclose.nvim')
  use { 'codota/tabnine-nvim', run = "./dl_binaries.sh" }
  use "terrortylor/nvim-comment"

  -- Window additions
  use {
	  'nvim-lualine/lualine.nvim',
	  requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }
  use('mg979/vim-visual-multi')

  -- Git integration
  use('tpope/vim-fugitive')

  -- Others
  use('brenoprata10/nvim-highlight-colors')
  use('voldikss/vim-floaterm')
  use('mbbill/undotree')
  use('andweeb/presence.nvim') -- Discord RP (Optional)
end)
