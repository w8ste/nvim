local M = {}

function M.toggleTree()
    local tree = require('nvim-tree.api').tree
    tree.toggle {}
end

function M.save()
    if vim.api.nvim_buf_get_option(0, 'readonly') then return end
    local buftype = vim.api.nvim_buf_get_option(0, 'buftype')
    if buftype == 'nofile' or buftype == 'prompt' then return end
    if vim.api.nvim_buf_get_option(0, 'modifiable') then vim.cmd 'w!' end
end

return M
