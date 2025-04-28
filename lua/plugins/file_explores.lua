return {
	{
		"stevearc/oil.nvim",
		---@module 'oil'
		---@type oil.SetupOpts
		opts = {},
		keys = {
			{ "-", "<cmd>Oil --float<cr>", desc = "Oil" },
		},
		-- Optional dependencies
		dependencies = {
			{ "echasnovski/mini.icons", opts = {} },
		},
		lazy = false,
	},
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"echasnovski/mini.icons", -- not strictly required, but recommended
			"MunifTanjim/nui.nvim",
			-- {"3rd/image.nvim", opts = {}}, -- Optional image support in preview window: See `# Preview Mode` for more information
		},
		lazy = false, -- neo-tree will lazily load itself
		---@module "neo-tree"
		---@type neotree.Config?
		opts = {

			-- fill any relevant options here
		},
		keys = {
			{ "<leader>e", "<cmd>Neotree toggle<cr>", desc = "Neotree file explorer" },
		},
	},
}
