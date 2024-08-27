return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	config = function()
		-- import mason
		local mason = require("mason")

		-- import mason-lspconfig
		local mason_lspconfig = require("mason-lspconfig")

		local mason_tool_installer = require("mason-tool-installer")

		-- enable mason and configure icons
		mason.setup({
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		})

		mason_lspconfig.setup({
			-- list of servers for mason to install
			ensure_installed = {
				-- "alex",
				-- "bash-language-server",
				-- "black", -- python formatter
				-- "clangd",
				-- "css-lsp",
				-- "emmet_ls",
				-- "html-lsp",
				-- "isort", -- python formatter
				-- "prettierd", -- prettier formatter
				-- "lua_ls",
				-- "pyright",
				-- "stylua", -- lua formatter
				-- "tailwindcss-language-server",
				-- "typescript-language-server",
			},
		})

		mason_tool_installer.setup({
			ensure_installed = {
				"alex",
				"bash-language-server",
				"black", -- python formatter
				"clangd",
				"css-lsp",
				"emmet_ls",
				"html-lsp",
				"isort", -- python formatter
				"prettier", -- prettier formatter
				"js-debug-adapter",
				"lua_ls",
				"pyright",
				"stylua", -- lua formatter
				"tailwindcss-language-server",
				"typescript-language-server",
			},
		})
	end,
}
