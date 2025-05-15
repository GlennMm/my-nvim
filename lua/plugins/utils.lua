return {
    {
        "GlennMm/autosaver",
        event = "InsertEnter",
        opts = {},
        keys = {
            { "<leader>st", "<cmd>Autosave toggle<cr>", desc = "Auto[S]ave [T]oggle" },
            { "<leader>sn", "<cmd>Autosave on<cr>", desc = "Auto[S]ave o[N]" },
            { "<leader>sf", "<cmd>Autosave off<cr>", desc = "Auto[S]ave o[F]" },
            { "<leader>ss", "<cmd>Autosave status<cr>", desc = "Auto[S]ave [T]oggle" },
        },
    },
    {
        "MeanderingProgrammer/render-markdown.nvim",
        event = "VeryLazy",
        dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-tree/nvim-web-devicons" },
        ---@module 'render-markdown'
        ---@type render.md.UserConfig
        opts = {
            file_types = { "markdown" },
        },
        ft = { "markdown" },
    },
    {
        "mbbill/undotree",
        event = "VeryLazy",
        keys = {
            { "<leader>ud", vim.cmd.UndotreeToggle, desc = "[U]n[d]o Tree" },
        },
    },
    -- lazy.nvim
    {
        "chrisgrieser/nvim-lsp-endhints",
        event = "LspAttach",
        opts = {}, -- required, even if empty
    },
    {
        "christoomey/vim-tmux-navigator",
        lazy = false,
    },
}
