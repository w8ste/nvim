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
    use {
        "folke/which-key.nvim",
        config = function()
        vim.o.timeout = true
        vim.o.timeoutlen = 300
        require("which-key").setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
        }
        end
    }
    use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
    use('nvim-treesitter/playground')
    use('theprimeagen/harpoon')
    use('tpope/vim-fugitive')
    use "lukas-reineke/indent-blankline.nvim"
    use("hrsh7th/nvim-cmp")
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
    use { 'kkharji/lspsaga.nvim' }  -- nightly
    use {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    }
    use {
        'folke/todo-comments.nvim',
        requires = 'nvim-lua/plenary.nvim',
    }
    use"christoomey/vim-tmux-navigator"

-- language Support
use 'lervag/vimtex'
use { "mfussenegger/nvim-jdtls", ft = { "java" }}

-- color support for nvim
use 'norcalli/nvim-colorizer.lua'
use 'echasnovski/mini.nvim'

-- toggle term
use {"akinsho/toggleterm.nvim", tag = '*', config = function()
  require("toggleterm").setup()
end}

-- ui
use 'nvim-tree/nvim-web-devicons'
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

-- hover
use {
    "lewis6991/hover.nvim",
    config = function()
        require("hover").setup {
            init = function()
                -- Require providers
                require("hover.providers.lsp")
                -- require('hover.providers.gh')
                -- require('hover.providers.gh_user')
                -- require('hover.providers.jira')
                -- require('hover.providers.man')
                -- require('hover.providers.dictionary')
            end,
            preview_opts = {
                border = nil
            },
            -- Whether the contents of a currently open hover window should be moved
            -- to a :h preview-window when pressing the hover keymap.
            preview_window = false,
            title = true
        }

        -- Setup keymaps
        --vim.keymap.set("n", "K", require("hover").hover, {desc = "hover.nvim"})
        vim.keymap.set("n", "gK", require("hover").hover_select, {desc = "hover.nvim (select)"})
    end
}
use { --for some reason i had touble when trying to use a seperate file.
  'glepnir/dashboard-nvim',
  event = 'VimEnter',
  config = function()
    require('dashboard').setup {
      -- config
        theme = 'doom',
        config = {
        header = {
        [[                                                    ]],
        [[                                                    ]],
        [[                                                    ]],
        [[                                                    ]],
        [[                                                    ]],
	    [[ ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ]],
	    [[ ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ]],
	    [[ ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ]],
	    [[ ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ]],
	    [[ ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ]],
	    [[ ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ]],
	    [[                                                    ]],
        [[                                                    ]],
        [[                                                    ]],
        [[                                                    ]],
        },
        center = {
        {
            desc = '   New file ',
            action = 'enew',
            group = '@string',
            key = 'n',
        },
        {
            desc = ' 󰈔  File/path ',
            action = 'Telescope find_files',
            group = '@string',
            key = 'f',
        },
        {
            desc = '   Recent Files',
            action = 'Telescope oldfiles',
            group = '@string',
            key = 'r'
        },
        {
            desc = '   Update ',
            action = 'PackerSync',
            group = '@string',
            key = 'u',
        },
        {
            desc = '   Quit ',
            action = 'q!',
            group = '@macro',
            key = 'q',
        },
        },
        footer = {"Motivation changes excactly nobody - Goggins"}  --your footer
    }
    }end,
  requires = {'nvim-tree/nvim-web-devicons'}
}


-- bufferline
use {'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons'}

--neorg
use {
    "nvim-neorg/neorg",
    config = function()
        require('neorg').setup {
            load = {
                ["core.defaults"] = {}, -- Loads default behaviour
                ["core.concealer"] = {}, -- Adds pretty icons to your documents
                ["core.dirman"] = { -- Manages Neorg workspaces
                    config = {
                        workspaces = {
                            notes = "~/notes",
                        },
                    },
                },
            },
        }
    end,
    run = ":Neorg sync-parsers",
    requires = "nvim-lua/plenary.nvim",
}
end)
