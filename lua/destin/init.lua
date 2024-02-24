local M = {}
local random = math.random

function M.setup(opts)
  opts = opts or {}
end

local function gen_uuid()
  local template ='xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx'
  return string.gsub(template, '[xy]', function (c)
      local v = (c == 'x') and random(0, 0xf) or random(8, 0xb)
      return string.format('%x', v)
      end)
end

function M.uuid()
  local new_uuid = gen_uuid()
  print("New UUID:", new_uuid)
  return new_uuid
end

return M
