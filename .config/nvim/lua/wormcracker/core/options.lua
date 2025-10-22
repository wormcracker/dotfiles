local opt = vim.opt -- for conciseness

-- line numbers
opt.relativenumber = true -- show relative line numbers
opt.number = true -- shows absolute line number on cursor line (when relative number is on)

-- tabs & indentation
opt.tabstop = 2 -- 2 spaces for tabs (prettier default)
opt.shiftwidth = 2 -- 2 spaces for indent width
opt.expandtab = true -- expand tab to spaces
opt.autoindent = true -- copy indent from current line when starting new one

-- Directory
opt.autochdir = true -- Auto changes the directory to current directory

-- line wrapping
opt.wrap = true -- enable line wrapping

--conceallevel for  NOTE: Obsidian
opt.conceallevel = 1

-- search settings
opt.ignorecase = true -- donot ignore case when searching
opt.smartcase = true -- if you include mixed case in your search, assumes you want case-sensitive

-- cursor line
opt.cursorline = false -- donot highlight the current cursor line

-- appearance

-- turn on termguicolors for nightfly or other colorscheme to work
opt.termguicolors = true
opt.background = "dark" -- colorschemes that can be light or dark will be made dark
opt.signcolumn = "yes" -- show sign column so that text doesn't shift

-- backspace
opt.backspace = "indent,eol,start" -- allow backspace on indent, end of line or insert mode start position

-- clipboard
opt.clipboard:append("unnamedplus") -- use system clipboard as default register

-- split windows
opt.splitright = true -- split vertical window to the right
opt.splitbelow = true -- split horizontal window to the bottom

-- Gui options
vim.o.guifont = "MesloLGS Nerd Font Mono:h15" -- text below applies for VimScript

-- (only for neovide)
vim.g.neovide_input_macos_option_key_is_meta = "only_left"
vim.g.neovide_input_use_logo = 1
vim.g.neovide_cursor_antialiasing = true
vim.g.neovide_cursor_animate_in_insert_mode = true
vim.g.neovide_cursor_animate_command_line = true
vim.g.neovide_cursor_unfocused_outline_width = 0.125
vim.g.neovide_cursor_smooth_blink = true

vim.g.neovide_window_blurred = true
vim.g.neovide_transparency = 0.8 -- Set transparency level (value between 0 and 1)
vim.g.neovide_background_blur = 3 -- Adjust the blur level (value between 0 and 10)
vim.g.neovide_cursor_vfx_mode = "railgun"

vim.g.neovide_floating_blur_amount_x = 4.0
vim.g.neovide_floating_blur_amount_y = 4.0
-- turn off swapfile
-- opt.swapfile = false

-- views can only be fully collapsed with the global statusline
opt.laststatus = 3
