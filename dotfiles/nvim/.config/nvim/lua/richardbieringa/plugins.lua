-- automatically bootstrap packer
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

-- install plugins upon saving this file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

    -- Treesitter
  use {
	  "nvim-treesitter/nvim-treesitter",
	  run = function()
		  local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
		  ts_update()
	  end,
  }
  use {"nvim-treesitter/playground"}

  -- LSP
  use {
	  "VonHeikemen/lsp-zero.nvim",
	  requires = {
		  -- LSP Support
		  {"neovim/nvim-lspconfig"},
		  {"williamboman/mason.nvim"},
		  {"williamboman/mason-lspconfig.nvim"},

		  -- Autocompletion
		  {"hrsh7th/nvim-cmp"},
		  {"hrsh7th/cmp-buffer"},
		  {"hrsh7th/cmp-path"},
		  {"saadparwaiz1/cmp_luasnip"},
		  {"hrsh7th/cmp-nvim-lsp"},
		  {"hrsh7th/cmp-nvim-lua"},

		  -- Snippets
		  {"L3MON4D3/LuaSnip"},
		  {"rafamadriz/friendly-snippets"},
	  }
  }

  -- Telescope
  use {
	  "nvim-telescope/telescope.nvim", tag = "0.1.0",
	  requires = { {"nvim-lua/plenary.nvim"} }
  }

  -- Fugitive
  use { "tpope/vim-fugitive" } 

  -- Theme
  -- https://github.com/catppuccin/nvim
  use({
	  "rose-pine/neovim",
	  as = "rose-pine",
	  config = function()
		  vim.cmd("colorscheme rose-pine")
	  end
  })

  -- automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
