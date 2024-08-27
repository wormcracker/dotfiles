return {
	"nvim-telescope/telescope.nvim",
	branch = "0.1.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		local telescope = require("telescope")
		local actions = require("telescope.actions")

		telescope.setup({
			defaults = {
				path_display = { "smart" },
				-- path_display = { "truncate" },
				sorting_strategy = "ascending",
				layout_config = {
					horizontal = { prompt_position = "top", preview_width = 0 },
					vertical = { mirror = false },
					width = 0.50,
					height = 0.50,
					preview_cutoff = 0,
				},
				mappings = {
					i = {
						["<C-j>"] = actions.move_selection_next,
						["<C-k>"] = actions.move_selection_previous,
						["<C-q>"] = actions.smart_send_to_qflist + actions.open_qflist,
						["<C-h>"] = actions.close,
						["<C-l>"] = actions.select_default + actions.center,
					},
					n = {
						["<C-j>"] = actions.move_selection_next,
						["<C-k>"] = actions.move_selection_previous,
						["<C-q>"] = actions.smart_send_to_qflist + actions.open_qflist,
						["<C-l>"] = actions.select_default + actions.center,
						["l"] = actions.select_default + actions.center,
						["o"] = actions.select_default,
					},
				},
			},
			pickers = {
				oldfiles = {
					theme = "dropdown",
				},
				live_grep = {
					theme = "dropdown",
				},
				grep_string = {
					theme = "dropdown",
				},
				buffers = {
					theme = "dropdown",
				},
				noice = {
					theme = "dropdown",
				},
				find_files = {
					theme = "dropdown",
				},
			},
		})
		telescope.load_extension("fzf")
		telescope.load_extension("noice")
	end,
}
