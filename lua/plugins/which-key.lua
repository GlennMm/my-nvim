return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  ---@class wk.Opts
  opts = {
    preset = "modern",
    spec = {
      { "<leader>c", group = "[C]ode" },
      { "<leader>d", group = "[D]ebug" },
      { "<leader>C", group = "[C]olorizer" },
      { "<leader>x", group = "[X]toggle" },
      { "<leader>t", group = "[T]est" },
      { "<leader>f", group = "[F]ind" },
      { "<leader>l", group = "[L]azy" },
      { "<leader>u", group = "[U]n" },
      { "<leader>fg", group = "[G]it" },
      { "<leader>s", group = "Auto[S]ave" },
      { "<leader>T", group = "[T]rouble" },
    },
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  },
  keys = {
    {
      "<leader>?",
      function()
        require("which-key").show({ global = true })
      end,
      desc = "Buffer Local Keymaps (which-key)",
    },
  },
}
