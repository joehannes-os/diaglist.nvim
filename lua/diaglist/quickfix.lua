local api = vim.api
local lsp = require('vim.lsp')
local util = require('diaglist.util')

local M = {}

M.populate_qflist = function(open)
  open = open or false
  
  vim.diagnostic.setqflist({ open = open })
end

M.open_all_diagnostics = function()
  populate_qflist(true)
end

M.diagnostics_hook = function()
  populate_qflist()
end

function M.init()
end

return M
