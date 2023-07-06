-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use 'folke/tokyonight.nvim'
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    -- install colorscheme
    use { "ellisonleao/gruvbox.nvim" }

    -- install treesitter
    use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

    -- install treesitter playground
    use('nvim-treesitter/playground')

    -- install harpoom
    use('theprimeagen/harpoon')

    -- install fugitive
    use('tpope/vim-fugitive')

    -- onedark colorscheme
    use({
        'navarasu/onedark.nvim'
    })

    -- nordic colorscheme
    use 'AlexvZyl/nordic.nvim'
    -- treesitter
    use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
    --harpoon
    use('theprimeagen/harpoon')

    --undotree
    use('mbbill/undotree')

    --undotree
    use('tpope/vim-fugitive')
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
    use 'lervag/vimtex'
    use { "mfussenegger/nvim-jdtls", ft = { "java" }}
use {
    "windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
}

use {
    'nvim-tree/nvim-tree.lua',
    requires = {
        'nvim-tree/nvim-web-devicons',
    },
}

-- TODO
use {
    'folke/todo-comments.nvim',
    requires = 'nvim-lua/plenary.nvim',
}
use {
  'glepnir/dashboard-nvim',
  event = 'VimEnter',
  config = function()
    require('dashboard').setup {
      -- config
    }
  end,
  requires = {'nvim-tree/nvim-web-devicons'}
}
end)
