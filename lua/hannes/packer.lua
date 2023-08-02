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

    -- theme
    use { "ellisonleao/gruvbox.nvim" }
    use({'navarasu/onedark.nvim'})
    use 'AlexvZyl/nordic.nvim'
    use 'folke/tokyonight.nvim'

    -- coding expirience
    use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
    use('nvim-treesitter/playground')
    use('theprimeagen/harpoon')
    use('tpope/vim-fugitive')
    use "lukas-reineke/indent-blankline.nvim"
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
    use {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    }
    use {
        'folke/todo-comments.nvim',
        requires = 'nvim-lua/plenary.nvim',
    }


-- language Support
use 'lervag/vimtex'
use { "mfussenegger/nvim-jdtls", ft = { "java" }}

-- color support for nvim
use 'norcalli/nvim-colorizer.lua'

-- ui
use {
    'nvim-tree/nvim-tree.lua',
    requires = {
        'nvim-tree/nvim-web-devicons',
    },
}
use {
    'nvim-lualine/lualine.nvim',
    requires = {
        'kyazdani42/nvim-web-devicons',
        opt = true,
    },
}

use({
    'willothy/nvim-cokeline',
    requires = {
      "nvim-lua/plenary.nvim",        -- Required for v0.4.0+
      "kyazdani42/nvim-web-devicons", -- If you want devicons
    },
    config = function()
      --require("cokeline").setup()
    end
  })

-- discord compatability 
use 'andweeb/presence.nvim'
end)
