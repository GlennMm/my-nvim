local handler = function(virtText, lnum, endLnum, width, truncate)
	local newVirtText = {}
	local suffix = (" 󰡏 %d "):format(endLnum - lnum)
	local sufWidth = vim.fn.strdisplaywidth(suffix)
	local targetWidth = width - sufWidth
	local curWidth = 0
	for _, chunk in ipairs(virtText) do
		local chunkText = chunk[1]
		local chunkWidth = vim.fn.strdisplaywidth(chunkText)
		if targetWidth > curWidth + chunkWidth then
			table.insert(newVirtText, chunk)
		else
			chunkText = truncate(chunkText, targetWidth - curWidth)
			local hlGroup = chunk[2]
			table.insert(newVirtText, { chunkText, hlGroup })
			chunkWidth = vim.fn.strdisplaywidth(chunkText)
			-- str width returned from truncate() may less than 2nd argument, need padding
			if curWidth + chunkWidth < targetWidth then
				suffix = suffix .. (" "):rep(targetWidth - curWidth - chunkWidth)
			end
			break
		end
		curWidth = curWidth + chunkWidth
	end
	table.insert(newVirtText, { suffix, "MoreMsg" })
	return newVirtText
end

local ftMap = {}

return {
	"kevinhwang91/nvim-ufo",
	lazy = false,
	dependencies = {
		"kevinhwang91/promise-async",
		"luukvbaal/statuscol.nvim",
	},
	opts = {
		fold_virt_text_handler = handler,
		close_fold_kinds = {},
		-- close_fold_kinds = { "imports", "comment" },
		provider_selector = function(_, filetype, _)
			-- if you prefer treesitter provider rather than lsp,
			-- return ftMap[filetype] or {'treesitter', 'indent'}
			return ftMap[filetype]
			-- return { "treesitter", "indent" }
		end,

		preview = {
			win_config = {
				border = { "", "─", "", "", "", "─", "", "" },
				winhighlight = "Normal:Folded",
				winblend = 0,
			},
			mappings = {
				scrollU = "<C-k>",
				scrollD = "<C-j>",
				jumpTop = "[",
				jumpBot = "]",
			},
		},
	},
	init = function()
		local builtin = require("statuscol.builtin")
		local cfg = {
			setopt = true,
			relculright = true,
			segments = {
				{ text = { builtin.foldfunc, " " }, click = "v:lua.ScFa", hl = "Comment" },
				{ text = { "%s" }, click = "v:lua.ScSa" },
				{ text = { builtin.lnumfunc, " " }, click = "v:lua.ScLa" },
			},
		}

		require("statuscol").setup(cfg)
	end,
	keys = {
		-- Using ufo provider need remap `zR` and `zM`. If Neovim is 0.6.1, remap yourself
		{
			"zR",
			function()
				require("ufo").openAllFolds()
			end,
			desc = "Open all folds.",
		},
		{
			"zM",
			function()
				require("ufo").closeAllFolds()
			end,
			desc = "Close all folds.",
		},
		{
			"zr",
			function()
				require("ufo").openFoldsExceptKinds()
			end,
			desc = "Close folds except kinds.",
		},
		{
			"zm",
			function()
				require("ufo").closeFoldsWith()
			end,
			desc = "Close folds with.",
		},
		{
			"zk",
			function()
				local winid = require("ufo").peekFoldedLinesUnderCursor()
				if not winid then
					vim.lsp.buf.hover()
				end
			end,
			desc = "Peek folds under cursor.",
		},
	},
}
