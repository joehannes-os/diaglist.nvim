local api = vim.api
local lsp = require('vim.lsp')
local util = require('diaglist.util')

local M = {}

M.populate_qflist = function(open)
  open = open or false
  
  vim.diagnostic.setqflist({ open = open })
end

M.open_all_diagnostics = function()
  M.populate_qflist(true)
end

M.diagnostics_hook = function()
  M.populate_qflist()
end

function M.init()
  vim.defer_fn(M.populate_qflist, 5000)
end

return M
