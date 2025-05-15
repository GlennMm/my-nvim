local cmd = vim.api.nvim_create_user_command

cmd("W", function()
  vim.cmd([[w]])
end, {})
cmd("Wa", function()
  vim.cmd([[wa]])
end, {})
cmd("Wqa", function()
  vim.cmd([[wqa]])
end, {})
