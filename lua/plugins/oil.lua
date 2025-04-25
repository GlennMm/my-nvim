return {
  'stevearc/oil.nvim',
  ---@module 'oil'
  ---@type oil.SetupOpts
  opts = {

  },
  keys = {
    { "-", "<cmd>Oil --float<cr>", desc = "Oil" }
  },
  -- Optional dependencies
  dependencies = {
    { "echasnovski/mini.icons", opts = {} }
  },
  lazy = false,
}
