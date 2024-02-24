local api = vim.api
local uc = api.nvim_create_user_command

local M = {}

function M.load()
  uc("WhaaatsAll", function() print"All Whaaats" end, {})
end

return M
