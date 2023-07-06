-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

local view = {
    cursorline = false,
    hide_root_folder = false,
    signcolumn = 'no',
    mappings = {
        list = {
            -- Allow moving out of the explorer.
            { key = 'i', action = 'toggle_file_info' },
            { key = '<C-k>', action = '' },
            { key = '[', action = 'dir_up' },
            { key = ']', action = 'cd' },
            { key = '<Tab>', action = 'edit' },
            { key = 'o', action = 'system_open' },
        },
    },
    width = { max = 38, min = 38, padding = 1 },
}

require("nvim-tree").setup {}





