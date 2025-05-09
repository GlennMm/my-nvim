local auto_cmd = vim.api.nvim_create_autocmd

auto_cmd("TextYankPost", {
	callback = function()
		vim.highlight.on_yank()
	end,
})

auto_cmd("QuitPre", {
	callback = function()
		vim.cmd([[wa]])
	end,
})

auto_cmd({ "CursorHold" }, {
    pattern = "*",
    callback = function()
        for _, winid in pairs(vim.api.nvim_tabpage_list_wins(0)) do
            if vim.api.nvim_win_get_config(winid).zindex then
                return
            end
        end
        vim.diagnostic.open_float({
            scope = "cursor",
            focusable = false,
            close_events = {
                "CursorMoved",
                "CursorMovedI",
                "BufHidden",
                "InsertCharPre",
                "WinLeave",
            },
        })
    end
})
