-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.1',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use ({
	  'rose-pine/neovim',
	  as = 'rose-pine',
	  config = function()
		  vim.cmd('colorscheme rose-pine')
	  end
  })

  use ( 'nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'} )

  use ( 'nvim-treesitter/playground' )

  use ( 'theprimeagen/harpoon' )

  use ( 'mbbill/undotree' )

  use ( 'tpope/vim-fugitive' )

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

  use ( 'f-person/git-blame.nvim' )

  use ( 'nvim-tree/nvim-tree.lua' )

  use ( 'nvim-tree/nvim-web-devicons' )

  use ( 'lewis6991/gitsigns.nvim' )

  use {
      'numToStr/Comment.nvim',
      config = function()
          require('Comment').setup()
      end
  }

  use {
      "windwp/nvim-autopairs",
      config = function() require("nvim-autopairs").setup {} end
  }

  use ( 'lukas-reineke/indent-blankline.nvim' )

  use {
      'goolord/alpha-nvim',
      requires = { 'nvim-tree/nvim-web-devicons' },
  }

  use ( 'feline-nvim/feline.nvim' )

  use ( 'gorbit99/codewindow.nvim' )

  use ( 'seandewar/nvimesweeper' )

end)
