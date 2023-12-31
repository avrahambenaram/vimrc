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
  use {"aktersnurra/no-clown-fiesta.nvim"}
  use {"arcticicestudio/nord-vim"}
  use { "sainnhe/sonokai" }

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
  use({
      "folke/trouble.nvim",
      config = function()
          require("trouble").setup {
			  icons = false,
			  fold_open = "v", -- icon used for open folds
			  fold_closed = ">", -- icon used for closed folds
			  indent_lines = false, -- add an indent guide below the fold icons
			  signs = {
				  -- icons / text used for a diagnostic
				  error = "error",
				  warning = "warn",
				  hint = "hint",
				  information = "info"
			  },
			  use_diagnostic_signs = false -- enabling this will use the signs defined in your lsp client
		  }
      end
  })

  -- Formatter
  use { 'mhartington/formatter.nvim' }
  use 'omnisharp/omnisharp-roslyn'
  use 'OmniSharp/omnisharp-vim'


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
