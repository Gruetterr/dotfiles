return {
	"goolord/alpha-nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")
		local button = dashboard.button

		dashboard.section.header.val = {
			"                                                  ",
			"███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗",
			"████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║",
			"██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║",
			"██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║",
			"██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║",
			"╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝",
			"                                                  ",
			"                                                  ",
			"                                                  ",
		}

		dashboard.section.buttons.val = {
			button("e", "[󰈔] New file", ":ene <BAR> startinsert <CR>"),
			button("f", "[󰍉] Find file", ":cd $HOME | Telescope find_files hidden=true no_ignore=true<CR>"),
			button("r", "[󰪶] Recent", ":Telescope oldfiles<CR>"),
			button("c", "[󰉁] Config", ":cd $HOME/.config/nvim/ | Telescope find_files hidden=true<CR>"),
			button("q", "[] Quit", ":qa<CR>"),
		}

		-- local fortune = require("alpha.fortune")
		-- dashboard.section.footer.val = fortune()

		alpha.setup(dashboard.opts)
	end,
}
