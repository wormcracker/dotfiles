return {
	"nvim-tree/nvim-tree.lua",
	dependencies = "nvim-tree/nvim-web-devicons",
	config = function()
		local nvimtree = require("nvim-tree")

		-- recommended settings from nvim-tree documentation
		vim.g.loaded_netrw = 1
		vim.g.loaded_netrwPlugin = 1

		nvimtree.setup({
			on_attach = "default",
			hijack_cursor = false,
			auto_reload_on_write = true,
			disable_netrw = false,
			hijack_netrw = true,
			hijack_unnamed_buffer_when_opening = false,
			root_dirs = {},
			prefer_startup_root = false,
			sync_root_with_cwd = false,
			reload_on_bufenter = false,
			respect_buf_cwd = false,
			select_prompts = false,
			view = {
				centralize_selection = false,
				cursorline = true,
				debounce_delay = 15,
				side = "left",
				preserve_window_proportions = false,
				number = false,
				relativenumber = false,
				signcolumn = "yes",
				width = 30,
				float = {
					enable = false,
					quit_on_focus_loss = true,
					open_win_config = {
						relative = "editor",
						border = "rounded",
						width = 30,
						height = 30,
						row = 1,
						col = 1,
					},
				},
			},
			sort = {
				sorter = "name",
				folders_first = true,
				files_first = false,
			},
			modified = {
				enable = false,
				show_on_dirs = true,
				show_on_open_dirs = true,
			},
			filesystem_watchers = {
				enable = true,
				debounce_delay = 50,
				ignore_dirs = {},
			},
			-- change folder arrow icons
			renderer = {
				add_trailing = false,
				group_empty = false,
				full_name = false,
				root_folder_label = ":~:s?$?/..?",
				indent_width = 2,
				indent_markers = {
					enable = true,
				},
				icons = {
					glyphs = {
						folder = {
							arrow_closed = "󰁕", -- arrow when folder is closed
							arrow_open = "󰁆", -- arrow when folder is open
						},
					},
				},
			},
			hijack_directories = {
				enable = true,
				auto_open = true,
			},
			update_focused_file = {
				enable = true,
				update_root = true,
				ignore_list = {},
			},
			system_open = {
				cmd = "",
				args = {},
			},
			-- disable window_picker for
			-- explorer to work well with
			-- window splits
			actions = {
				open_file = {
					window_picker = {
						enable = false,
					},
				},
			},
			filters = {
				custom = { ".DS_Store" },
			},
			git = {
				ignore = false,
			},
		})
	end,
}
