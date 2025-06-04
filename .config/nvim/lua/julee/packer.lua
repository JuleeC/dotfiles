
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
  use 'AlexvZyl/nordic.nvim'
  use ('nvim-treesitter/nvim-treesitter',{ run = ':TSUpdate'})
  use ('nvim-treesitter/playground')
  use ('ThePrimeagen/harpoon') 
  use ('mbbill/undotree') 
  use ('tpope/vim-fugitive') 
  use({"nvim-lua/plenary.nvim"})
  use('nvim-tree/nvim-web-devicons') -- Recommended for icons
    -- use('feline-nvim/feline.nvim')
    --use {'stevearc/oil.nvim'}
  use {
  "startup-nvim/startup.nvim",
  requires = {"nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim", "nvim-telescope/telescope-file-browser.nvim"},
  }
  use("neovim/nvim-lspconfig")
 
end)






