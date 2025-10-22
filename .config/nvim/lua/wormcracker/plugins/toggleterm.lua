--NOTE: Terminal for nvim
return {
	{
		"akinsho/toggleterm.nvim",
		version = "*",
		opts = {
			size = 20,
			open_mapping = [[<m-\>]],
			hide_numbers = true,
			shade_filetypes = {},
			shade_terminals = true,
			shading_factor = 2,
			start_in_insert = true,
			insert_mappings = true,
			persist_size = true,
			direction = "float",
			autochdir = true, -- Ensures the terminal's directory matches the Neovim current directory
			close_on_exit = true,
			shell = vim.o.shell,
			float_opts = {
				border = "curved",
				winblend = 30,
				highlights = {
					border = "Normal",
					background = "Normal",
				},
			},
		},
	},
}
