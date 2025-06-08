
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
  'nvim-lualine/lualine.nvim',
  requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }
  use {
    'goolord/alpha-nvim',
    requires = {
        'echasnovski/mini.icons',
        'nvim-lua/plenary.nvim'
    },
    config = function ()
        require'alpha'.setup(require'alpha.themes.dashboard'.config)
    end
  }
 -- LSP core plugins
 use {
  "williamboman/mason.nvim",
  run = ":MasonUpdate" -- optional
 }

 use {
  "williamboman/mason-lspconfig.nvim",
  requires = { "williamboman/mason.nvim", "neovim/nvim-lspconfig" }
 }

 use "neovim/nvim-lspconfig"

  

  -- Optional: Autocompletion plugins
  use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
  use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
  use 'hrsh7th/cmp-buffer' -- Buffer completions
  use 'hrsh7th/cmp-path' -- Path completions
  use 'hrsh7th/cmp-cmdline' -- Cmdline completions
  use 'L3MON4D3/LuaSnip' -- Snippet engine
  use 'saadparwaiz1/cmp_luasnip' -- Snippet completions

  -- Optional: UI enhancements
  use 'onsails/lspkind.nvim' -- VSCode-like pictograms for autocompletion
end)






