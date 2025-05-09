local M = {}
M.name = "Ultra 60"
M.setup = function()
  require("config.lazy")
  require("config.keymaps")
  require("config.autocmds")
  vim.notify("Running " .. M.name .. " setup.")
end

return M
