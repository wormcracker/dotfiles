--NOTE: Handles Git all status
return {
	"lewis6991/gitsigns.nvim",
	event = { "BufReadPre", "BufNewFile" },
	opts = {
		on_attach = function(bufnr)
			local gs = package.loaded.gitsigns

			-- ?? Navigation
			vim.keymap.set("n", "]h", gs.next_hunk, { buffer = bufnr, desc = "Next Git hunk" })
			vim.keymap.set("n", "[h", gs.prev_hunk, { buffer = bufnr, desc = "Previous Git hunk" })

			-- ?? Stage / Reset
			vim.keymap.set("n", "<leader>hs", gs.stage_hunk, { buffer = bufnr, desc = "Stage current hunk" })
			vim.keymap.set("n", "<leader>hr", gs.reset_hunk, { buffer = bufnr, desc = "Reset current hunk" })

			vim.keymap.set("v", "<leader>hs", function()
				gs.stage_hunk({ vim.fn.line("."), vim.fn.line("v") })
			end, { buffer = bufnr, desc = "Stage selected hunk" })

			vim.keymap.set("v", "<leader>hr", function()
				gs.reset_hunk({ vim.fn.line("."), vim.fn.line("v") })
			end, { buffer = bufnr, desc = "Reset selected hunk" })

			-- ?? Buffer-level actions
			vim.keymap.set("n", "<leader>hS", gs.stage_buffer, { buffer = bufnr, desc = "Stage entire buffer" })
			vim.keymap.set("n", "<leader>hR", gs.reset_buffer, { buffer = bufnr, desc = "Reset entire buffer" })

			-- ?? Undo & Preview
			vim.keymap.set("n", "<leader>hu", gs.undo_stage_hunk, { buffer = bufnr, desc = "Undo last stage hunk" })
			vim.keymap.set("n", "<leader>hp", gs.preview_hunk, { buffer = bufnr, desc = "Preview hunk" })

			-- ?? Blame info
			vim.keymap.set("n", "<leader>hb", function()
				gs.blame_line({ full = true })
			end, { buffer = bufnr, desc = "Show full blame for current line" })

			vim.keymap.set(
				"n",
				"<leader>hB",
				gs.toggle_current_line_blame,
				{ buffer = bufnr, desc = "Toggle inline blame" }
			)

			-- ?? Diffs
			vim.keymap.set("n", "<leader>hd", gs.diffthis, { buffer = bufnr, desc = "Diff against index" })
			vim.keymap.set("n", "<leader>hD", function()
				gs.diffthis("~")
			end, { buffer = bufnr, desc = "Diff against previous commit" })

			-- ?? Text object
			vim.keymap.set(
				{ "o", "x" },
				"ih",
				":<C-U>Gitsigns select_hunk<CR>",
				{ buffer = bufnr, desc = "Select Git hunk" }
			)
		end,
	},
}
