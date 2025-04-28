return {
	"ibhagwan/fzf-lua",
	dependencies = { "echasnovski/mini.icons" },
	opts = {},
	keys = {
		{
			"<leader>ff",
			function()
				require("fzf-lua").files({ resume = true })
			end,
			desc = "Search files",
		},
		{
			"<leader>fh",
			function()
				require("fzf-lua").live_grep({ resume = true })
			end,
			desc = "Find help.",
		},
		{
			"<leader>fk",
			function()
				require("fzf-lua").live_grep({ resume = true })
			end,
			desc = "Find Keymap.",
		},
		{
			"<leader>fl",
			function()
				require("fzf-lua").live_grep({ resume = true })
			end,
			desc = "Live grep.",
		},
		{
			"<leader>fc",
			function()
				require("fzf-lua").files({ cwd = vim.fn.stdpath("config") })
			end,
			desc = "Search config files",
		},
		{
			"<leader>fr",
			function()
				require("fzf-lua").resume()
			end,
			desc = "Resume",
		},
		{
			"<leader>fgB",
			function()
				require("fzf-lua").git_branches()
			end,
			desc = "[G]it [B]ranches",
		},
		{
			"<leader>fgc",
			function()
				require("fzf-lua").git_commits()
			end,
			desc = "[G]it [C]ommits",
		},
		{
			"<leader>fgb",
			function()
				require("fzf-lua").git_blame()
			end,
			desc = "[G]it [B]lame",
		},
		{
			"<leader><leader>",
			function()
				require("fzf-lua").buffers()
			end,
			desc = "[ ] Find existing buffers",
		},
		{
			"<leader>fb",
			function()
				require("fzf-lua").builtin()
			end,
			desc = "[F]ind [B]uiltin FZF",
		},
		{
			"<leader>fo",
			function()
				require("fzf-lua").oldfiles()
			end,
			desc = "[F]ind [O]ld Files",
		},
		{
			"<leader>/",
			function()
				require("fzf-lua").lgrep_curbuf()
			end,
			desc = "[/] Live grep the current buffer",
		},
	},
}
