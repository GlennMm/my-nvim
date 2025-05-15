return {
  "rachartier/tiny-inline-diagnostic.nvim",
  priority = 1000,
  config = function()
    require("tiny-inline-diagnostic").setup({
      transparent_cursorline = true, -- Set the background of the cursorline to transparent (only one the first diagnostic)
    })
    vim.diagnostic.config({ virtual_text = false }) -- Only if needed in your configuration, if you already have native LSP diagnostics
  end,
}
