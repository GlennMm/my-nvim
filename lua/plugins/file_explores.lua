return {
	"stevearc/oil.nvim",
	---@module 'oil'
	---@type oil.SetupOpts
	opts = {},
	keys = {
		{ "-", "<cmd>Oil --float<cr>", desc = "Oil" },
	},
	-- Optional dependencies
	dependencies = {
		{ "nvim-tree/nvim-web-devicons", opts = {} },
	},
	lazy = false,
}
