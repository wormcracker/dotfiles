return {
	{
		"williamboman/mason-lspconfig.nvim",
		opts = {
			-- list of servers for mason to install
			ensure_installed = {
				"lua_ls",
				"tailwindcss",
				"ts_ls",
				"pyright",
				"eslint",
				"html",
				"cssls",
				"emmet_ls",
			},
		},
		dependencies = {
			{
				"williamboman/mason.nvim",
				opts = {
					ui = {
						icons = {
							package_installed = "‚úì",
							package_pending = "‚ûú",
							package_uninstalled = "‚úó",
						},
					},
				},
			},
			"neovim/nvim-lspconfig",
		},
	},
	{
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		opts = {
			ensure_installed = {
				"prettier", -- prettier formatter
				"stylua", -- lua formatter
				"isort", -- python formatter
				"black", -- python formatter
				"pylint",
				"beautysh",
				"eslint_d",
				"jsonlint",
				"vale",
			},
		},
		dependencies = {
			"williamboman/mason.nvim",
		},
	},
}
