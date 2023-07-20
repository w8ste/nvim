
vim.loader.enable()

-- Setup environment
local U = require 'hannes.utils'
local env_file = os.getenv 'HOME' .. '/.private/nvim_env.lua'
if U.file_exists(env_file) then vim.cmd('luafile ' .. env_file) end

require("hannes.packer")
require("hannes.theme")
require("hannes.set")
require("hannes.ui.lualine")
require("hannes.ui.tree")
require("hannes.ui.colorizer")
require("hannes.keymaps")
