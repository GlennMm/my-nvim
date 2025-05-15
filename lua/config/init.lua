local M = {}

M.name = "Ultra 60"

M.setup = function()
  require("config.lazy")
  require("config.keymaps")
  require("config.autocmds")
  require("config.cmds")
end

return M
