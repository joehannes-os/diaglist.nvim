local util = require('diaglist.util')

local M = {
  debug = false,
}

function M.populate_llist()
  M.diagnostics_hook()
end

function M.diagnostics_hook(open)
  open = open or false
  
  vim.diagnostic.setloclist({
    open = open,
  })
end

function M.open_buffer_diagnostics()
  M.diagnostics_hook(true)
end

return M
