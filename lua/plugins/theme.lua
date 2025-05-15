return {
    "NTBBloodbath/sweetie.nvim",
    lazy = false,
    priority = 1000,
    opts = {
        overrides = {
            Comment = { italic = true },
            CommentBold = { italic = true },
            Keyword = { italic = true },
            Boolean = { italic = true },
            Class = { italic = true },
            -- Optional, just if you use Java and you do not want some extra italics
            -- ["@type.java"] = { italic = false },
            -- ["@type.qualifier.java"] = { italic = false },
        },
        -- transparent = vim.g.transparent_enabled,
    },
    config = function()
        -- transparent background
        vim.cmd([[colorscheme sweetie]])
    end,
}
