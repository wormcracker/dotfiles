return {
	"folke/noice.nvim",
	event = "VeryLazy",
	opts = {
		notify = {
			render = "default",
			timeout = 3000,
			stages = "fade_in_slide_out",
		},
	},
	dependencies = {
		"MunifTanjim/nui.nvim",
		"rcarriga/nvim-notify",
	},
	config = function()
		require("notify").setup({
			stages = "fade_in_slide_out",
			timeout = 3000,
			render = "default",
			background_colour = "Normal",
			fps = 30,
			top_down = false, -- This moves the notifications to the bottom
			position = "bottom_right", -- Set position to bottom right

			-- Dynamically adjust width and height based on screen size
			max_width = function()
				-- Dynamic width based on screen columns
				return math.floor(vim.o.columns * 1)
			end,
			max_height = function()
				-- Dynamic height based on screen lines
				return math.floor(vim.o.lines * 0.3)
			end,
		})

		-- Set Noice to use nvim-notify if available
		require("noice").setup({
			notify = require("notify"),
		})
	end,
	setup = {
		lsp = {
			override = {
				["vim.lsp.util.convert_input_to_markdown_lines"] = true,
				["vim.lsp.util.stylize_markdown"] = true,
				["cmp.entry.get_documentation"] = true,
			},
		},
		presets = {
			bottom_search = true,
			command_palette = true,
			long_message_to_split = true,
			inc_rename = false,
			lsp_doc_border = false,
		},
	},
}
