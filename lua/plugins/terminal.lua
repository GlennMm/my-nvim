return {
	{
		"stevearc/overseer.nvim",
		event = "VeryLazy",
		dependencies = {},
		opts = {
			dap = true,
			strategy = "toggleterm",
		},
	},
	{
		"akinsho/toggleterm.nvim",
		event = "VeryLazy",
		version = "*",
		opts = {},
	},
}
