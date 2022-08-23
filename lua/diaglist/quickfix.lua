local api = vim.api
local lsp = require('vim.lsp')
local util = require('diaglist.util')

local M = {}

M.title = 'Workspace Diagnostics'

local function is_qf_foreign()
  return vim.fn.getqflist{ title = 0 }.title ~= M.title
end

local function populate_qflist(open)
  open = open or false
  
  vim.diagnostic.setqflist({ open = open, title = M.title })
end

M.open_all_diagnostics = function()
  populate_qflist(true)
end

M.diagnostics_hook = function()
  if not is_qf_foreign() then
    M.populate_qflist()
  end
end

function M.init()
end

return M
