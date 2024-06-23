return {
	"windwp/nvim-autopairs",
	event = "InsertEnter",
	opts = {},
	config = function(_, opts)
		require("nvim-autopairs").setup(opts)

		-- Add custom pairs here
		local Rule = require("nvim-autopairs.rule")
		require("nvim-autopairs").add_rule(Rule("$", "$", "tex"))
		require("nvim-autopairs").add_rule(Rule("\\[", "\\]", "tex"))
	end,
	-- use opts = {} for passing setup options
	-- this is equalent to setup({}) function
}
