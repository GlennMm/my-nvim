local auto_cmd = vim.api.nvim_create_autocmd

auto_cmd("TextYankPost", {
	callback = function()
		vim.highlight.on_yank()
	end,
})
