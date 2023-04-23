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

-- install colorscheme
use 'folke/tokyonight.nvim'

-- install treesitter
use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

-- install treesitter playground
use('nvim-treesitter/playground')

-- install harpoom
use('theprimeagen/harpoon')

-- install fugitive
use('tpope/vim-fugitive')

end)
