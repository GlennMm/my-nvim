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
			"<leader>fg",
			function()
				require("fzf-lua").live_grep({ resume = true })
			end,
			desc = "Live grep.",
		},
		{
			"<leader>fcc",
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
			"<leader>fgb",
			function()
				require("fzf-lua").git_branches()
			end,
			desc = "Search git branches",
		},
		{
			"<leader>fgc",
			function()
				require("fzf-lua").git_commits()
			end,
			desc = "Search git commits",
		},
		{
			"<leader>fgl",
			function()
				require("fzf-lua").git_blame()
			end,
			desc = "Git blame",
		},
		{
			"<leader>fdd",
			function()
				require("fzf-lua").diagnostics_document()
			end,
			desc = "Search document diagnostics.",
		},
		{
			"<leader>fdw",
			function()
				require("fzf-lua").diagnostics_workspace()
			end,
			desc = "Search workspace diagnostics",
		},
		{
			"<leader>fcr",
			function()
				require("fzf-lua").lsp_references()
			end,
			desc = "Lsp references.",
		},
		{
			"<leader>fcd",
			function()
				require("fzf-lua").lsp_declarations()
			end,
			desc = "Lsp declarations",
		},
		{
			"<leader>fcf",
			function()
				require("fzf-lua").lsp_definitions()
			end,
			desc = "Lsp definations",
		},
		{
			"<leader>fca",
			function()
				require("fzf-lua").lsp_code_actions()
			end,
			desc = "Lsp code actions",
		},
	},
}
