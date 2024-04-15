require("wormcracker.plugins-setup")
require("wormcracker.core.options")
require("wormcracker.core.keymaps")
require("wormcracker.core.colorscheme")
require("wormcracker.plugins.dashboard")
require("wormcracker.plugins.comment")
require("wormcracker.plugins.lualine")
require("wormcracker.plugins.telescope")
require("wormcracker.plugins.nvim-cmp")
require("wormcracker.plugins.lsp.mason")
require("wormcracker.plugins.lsp.lspsaga")
require("wormcracker.plugins.lsp.lspconfig")
require("wormcracker.plugins.lsp.null-ls")
require("wormcracker.plugins.autopairs")
require("wormcracker.plugins.treesitter")
require("wormcracker.plugins.gitsigns")
require("wormcracker.plugins.toggleterm")
require("wormcracker.plugins.bufferline")
require("wormcracker.plugins.colorizer")
require("wormcracker.plugins.blankline")
require("nvim-tree").setup({
	hijack_directories = {
		enable = true,
		auto_open = true,
	},
	update_focused_file = {
		enable = true,
		update_cwd = true,
		ignore_list = {},
	},
	system_open = {
		cmd = "",
		args = {},
	},
	diagnostics = {
		enable = false,
		show_on_dirs = false,
		show_on_open_dirs = true,
		debounce_delay = 50,
		severity = {
			min = vim.diagnostic.severity.HINT,
			max = vim.diagnostic.severity.ERROR,
		},
		icons = {
			hint = "",
			info = "",
			warning = "",
			error = "",
		},
	},
	-- update_to_buf_dir = {
	--   enable = false,
	-- },
	-- disable_netrw = true,
	-- hijack_netrw = true,
	-- open_on_setup = false,
	filters = {
		custom = { ".git" },
		exclude = { ".gitignore" },
	},
	-- auto_close = true,
	-- open_on_tab = false,
	-- hijack_cursor = false,
	-- --   error
	-- --   info
	-- --   question
	-- --   warning
	-- --   lightbulb
	renderer = {
		add_trailing = false,
		group_empty = false,
		highlight_git = false,
		highlight_opened_files = "none",
		root_folder_modifier = ":t",
		indent_markers = {
			enable = true,
			icons = {
				corner = "└ ",
				edge = "│ ",
				none = "  ",
			},
		},
		icons = {
			webdev_colors = true,
			git_placement = "before",
			padding = " ",
			symlink_arrow = " ➛ ",
			show = {
				file = true,
				folder = true,
				folder_arrow = true,
				git = true,
			},
			glyphs = {
				default = "",
				symlink = "",
				folder = {
					arrow_open = "",
					arrow_closed = "",
					default = "",
					open = "",
					empty = "",
					empty_open = "",
					symlink = "",
					symlink_open = "",
				},
				git = {
					unstaged = "",
					staged = "S",
					unmerged = "",
					renamed = "➜",
					untracked = "U",
					deleted = "",
					ignored = "◌",
				},
			},
		},
	},
	-- system_open = {
	--   cmd = nil,
	--   args = {},
	-- },
	-- filters = {
	--   dotfiles = false,
	--   custom = {},
	-- },
	git = {
		enable = true,
		ignore = true,
		timeout = 500,
	},
	view = {
		width = 28,
		side = "left",
		-- auto_resize = true,
		-- on_attach = {
		-- 	custom_only = false,
		-- 	list = {
		-- 		{ key = { "l", "<CR>", "o" }, cb = tree_cb("edit") },
		-- 		{ key = "h", cb = tree_cb("close_node") },
		-- 		{ key = "v", cb = tree_cb("vsplit") },
		-- 	},
		-- },
		number = false,
		relativenumber = false,
	},
})
vim.o.guifont = "JetBrainsMono NF:h10" -- text below applies for VimScript
vim.g.neovide_cursor_trail_size = 0.8
vim.g.neovide_cursor_antialiasing = true
vim.g.neovide_cursor_animate_in_insert_mode = true
vim.g.neovide_cursor_animate_command_line = true
vim.g.neovide_cursor_unfocused_outline_width = 0.125
vim.g.neovide_cursor_smooth_blink = true
vim.g.neovide_cursor_vfx_mode = "sonicboom"
