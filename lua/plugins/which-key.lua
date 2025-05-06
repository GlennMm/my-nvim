return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	---@class wk.Opts
	opts = {
		preset = "modern",
		spec = {
			{ "<leader>c", group = "[C]ode" },
			{ "<leader>t", group = "[T]oggle" },
			{ "<leader>f", group = "[F]ind" },
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
