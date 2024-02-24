local d_cmds = require('destin.whaaat.commands')

local M = {}

local function merge_tables(t1, t2)
  local merged_tables = {}

  for k, v in pairs(t1) do
     merged_tables[k] = v
  end

  for k, v in pairs(t2) do
     merged_tables[k] = v
  end

  return merged_tables
end

local default_opts = {
  load_commands = true
}

function M.setup(opts)
  opts = opts or {}

  options = merge_tables(default_opts, opts)

  if options.load_commands then
    d_cmds.load()
  end

  print('setting up whaaat')
end

return M
