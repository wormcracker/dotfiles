local db = require("dashboard")
db.setup({
	theme = "hyper",
	config = {
		week_header = {
			enable = true,
		},
		shortcut = {
			{ desc = "󰊳 Update", group = "@property", action = "Lazy update", key = "u" },
			{
				icon = " ",
				icon_hl = "@variable",
				desc = "Files",
				group = "Label",
				action = "Telescope find_files",
				key = "f",
			},
			{
				desc = "Recent Files",
				group = "DiagnosticHint",
				action = "Telescope oldfiles",
				key = "r",
			},
			{
				desc = " Themes",
				group = "Number",
				action = "Telescope colorscheme",
				key = "t",
			},
		},
	},
})
