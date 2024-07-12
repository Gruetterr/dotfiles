return {
	"xeluxee/competitest.nvim",
	dependencies = "MunifTanjim/nui.nvim",
	config = function()
		require("competitest").setup({
			template_file = {
				cpp = "~/.config/nvim/cp-cpp-template.cpp",
			},
			testcases_use_single_file = true,
			received_problems_path = "$(HOME)/Competitive Programming/$(JUDGE)/$(CONTEST)/$(PROBLEM).$(FEXT)",
			received_contests_directory = "$(HOME)/Competitive Programming/$(JUDGE)/$(CONTEST)",
		})
	end,
}
