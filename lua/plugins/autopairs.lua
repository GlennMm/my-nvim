return {
	"windwp/nvim-autopairs",
	event = "InsertEnter",
	opts = {
		check_ts = true,
		ts_string = {
			lua = { "string" },
			javascript = { "template_string" },
			java = false,
		},
	},
}
