-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

---------------------
-- General Keymaps
---------------------

-- use jk to exit insert mode
keymap.set("i", "jk", "<ESC>")

-- clear search highlights
keymap.set("n", "<leader>nh", "<cmd>nohl<CR>")

-- delete single character without copying into register
keymap.set("n", "x", '"_x')

-- move the line using visual mode too
keymap.set("v", "J", ":m '>+1<CR>gv=gv") -- usecase highlight using visual mode and move using {J.k.l.h}
keymap.set("v", "K", ":m '<-2<CR>gv=gv") -- usecase highlight using visual mode and move using {J K L H}

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>") -- increment
keymap.set("n", "<leader>-", "<C-x>") -- decrement

-- window management
keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width & height
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window

keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>") --  go to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") --  go to previous tab

----------------------
-- Plugin Keybinds
---------------------

-- vim-maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>") -- toggle split window maximization

-- Live-server start/end
keymap.set("n", "<leader>ls", "<cmd>LiveServer start<CR>") -- Start the live server
keymap.set("n", "<leader>le", "<cmd>LiveServer stop<CR>") -- Stop the live server

-- nvim-tree
keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<CR>") -- toggle file explorer
-- keymap.set("n", "<leader>w", "<cmd>NvimTreeFindFileToggle<CR>") -- toggle file explorer

-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
keymap.set("n", "<leader>fw", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type
keymap.set("n", "<leader>fs", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- list available help tags
keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>") -- list available help tags
keymap.set("n", "<leader>ft", "<cmd>Telescope colorscheme<cr>") -- list available help tags

-- telescope git commands (not on youtube nvim video)
keymap.set("n", "<leader>gc", "<cmd>Telescope git_commits<cr>") -- list all git commits (use <cr> to checkout) ["gc" for git commits]
keymap.set("n", "<leader>gfc", "<cmd>Telescope git_bcommits<cr>") -- list git commits for current file/buffer (use <cr> to checkout) ["gfc" for git file commits]
keymap.set("n", "<leader>gb", "<cmd>Telescope git_branches<cr>") -- list git branches (use <cr> to checkout) ["gb" for git branch]
keymap.set("n", "<leader>gs", "<cmd>Telescope git_status<cr>") -- list current changes per file with diff preview ["gs" for git status]

-- restart lsp server (not on youtube nvim video)
keymap.set("n", "<leader>rs", ":LspRestart<CR>") -- mapping to restart lsp if necessary

-- previous/next buffer
keymap.set("n", "<TAB>", "<cmd>BufferLineCycleNext<CR>") -- previous buffer
keymap.set("n", "<S-TAB>", "<cmd>BufferLineCyclePrev<CR>") -- next buffer
keymap.set("n", "<leader>c", "<cmd>:bp|bd#<CR>") -- delete buffer
keymap.set("n", "<C-TAB>", "<cmd>BufferLineMoveNext<CR>") -- next buffer
keymap.set("n", "<A-TAB>", "<cmd>BufferLineMovePrev<CR>") -- next buffer
