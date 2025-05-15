local auto_cmd = vim.api.nvim_create_autocmd

auto_cmd("TextYankPost", {
  callback = function()
    vim.highlight.on_yank()
  end,
})

auto_cmd("QuitPre", {
  callback = function()
    vim.cmd([[wa]])
  end,
})

auto_cmd("BufWritePre", {
  callback = function()
    require("conform").format({ async = true, lsp_format = "fallback" })
  end,
})
