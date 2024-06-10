--o This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.6',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use {
      'folke/tokyonight.nvim',
      lazy = false,
      priority = 1000,
      config = function()
          require('tokyonight').setup({})
          vim.cmd("colorscheme tokyonight-storm") -- Or any Tokyo theme available
      end
  }

  -- This plugin adds a dashboard to neovim
  use {
      'nvimdev/dashboard-nvim',
      event = 'VimEnter',
      config = function()
          require('dashboard').setup {
              -- config
          }
      end,
      requires = {'nvim-tree/nvim-web-devicons'}
  }

  -- Breadcrumbs
  use {
      "SmiteshP/nvim-navic",
      requires = "neovim/nvim-lspconfig"
  }
  use({
      "utilyre/barbecue.nvim",
      tag = "*",
      requires = {
          "SmiteshP/nvim-navic",
          "nvim-tree/nvim-web-devicons", -- optional dependency
      },
      after = "nvim-web-devicons", -- keep this if you're using NvChad
      config = function()
          require("barbecue").setup()
      end,
  })

 
  use {
      'nvim-tree/nvim-tree.lua',
      requires = {
          'nvim-tree/nvim-web-devicons', -- optional
      },
  }
  use('nvim-tree/nvim-web-devicons')

  use('lervag/vimtex') -- Adds support for LaTeX
  use('feline-nvim/feline.nvim') -- Adds the bar at the bottom
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use('nvim-treesitter/playground')
  use('theprimeagen/harpoon')
  use('mbbill/undotree')
  use('tpope/vim-fugitive')
  use('tpope/vim-commentary')
  use('MunifTanjim/prettier.nvim')
  use('neoclide/coc.nvim', {run = 'release'})
  use('pocco81/auto-save.nvim')
  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v3.x',
	  requires = {
		  --- Uncomment the two plugins below if you want to manage the language servers from neovim
		  {'williamboman/mason.nvim'},
		  {'williamboman/mason-lspconfig.nvim'},
		  {'neovim/nvim-lspconfig'},
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'L3MON4D3/LuaSnip'},
	  }
  }
  

  use {
		'michaelb/sniprun',
		run = 'sh install.sh'
  }
    
 
end)
