return {
	"neovim/nvim-lspconfig",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = {
		"hrsh7th/cmp-nvim-lsp",
		{ "antosha417/nvim-lsp-file-operations", config = true },
		{ "folke/neodev.nvim", opts = {} },
		"williamboman/mason.nvim", -- ensures mason loads before LSP
	},
	config = function()
		local lspconfig = require("lspconfig")
		local mason_lspconfig = require("mason-lspconfig")
		local cmp_nvim_lsp = require("cmp_nvim_lsp")
		local keymap = vim.keymap

		-- Capabilities for completion
		local capabilities = cmp_nvim_lsp.default_capabilities()

		-- LSP keymaps
		vim.api.nvim_create_autocmd("LspAttach", {
			group = vim.api.nvim_create_augroup("UserLspConfig", {}),
			callback = function(ev)
				local opts = { buffer = ev.buf, silent = true }
				-- LSP Keymaps with Descriptions
				keymap.set("n", "gd", "<cmd>Telescope lsp_definitions<CR>", { desc = "Go to LSP definitions" })
				keymap.set("n", "gD", vim.lsp.buf.declaration, { desc = "Go to declaration" })
				keymap.set("n", "gi", "<cmd>Telescope lsp_implementations<CR>", { desc = "Go to implementations" })
				keymap.set("n", "gR", "<cmd>Telescope lsp_references<CR>", { desc = "Find references" })
				keymap.set("n", "gk", vim.lsp.buf.hover, { desc = "Show hover information" })
				keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, { desc = "Code actions" })
				keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { desc = "Rename symbol" })
				keymap.set("n", "<leader>d", vim.diagnostic.open_float, { desc = "Show diagnostics for line" })
				keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Go to previous diagnostic" })
				keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Go to next diagnostic" })
				keymap.set(
					"n",
					"<leader>D",
					"<cmd>Telescope diagnostics bufnr=0<CR>",
					{ desc = "List buffer diagnostics" }
				)
				keymap.set("n", "<leader>rs", ":LspRestart<CR>", { desc = "Restart LSP server" })
			end,
		})

		local severity = vim.diagnostic.severity

		vim.diagnostic.config({
			signs = {
				text = {
					[severity.ERROR] = " ",
					[severity.WARN] = " ",
					[severity.HINT] = "󰠠 ",
					[severity.INFO] = " ",
				},
			},
		})
	end,
}
