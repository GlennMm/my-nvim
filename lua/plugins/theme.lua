return {
	"folke/tokyonight.nvim",
	lazy = false,
	priority = 1000,
	opts = {
		transparent = vim.g.transparent_enabled,
	},
	config = function()
		-- transparent background
		vim.cmd([[colorscheme tokyonight-night]])
	end,
}
