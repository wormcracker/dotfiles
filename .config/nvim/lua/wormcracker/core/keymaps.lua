-- set leader key to space
vim.g.mapleader = " "
local keymap = vim.keymap -- for conciseness

---------------------
-- General Keymaps
---------------------

-- use jk to exit insert mode
keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- delete single character without copying into register
keymap.set("n", "x", '"_x')

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" }) -- increment
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) -- decrement

-- yanked the complete path location of current file
keymap.set("n", "<leader>y", "<cmd>lua vim.fn.setreg('+', vim.fn.expand('%:p'))<cr>")

-- neovide(only)
vim.keymap.set("x", "<leader>p", [["_dP]])
if vim.g.neovide then
  vim.keymap.set("n", "<D-s>", ":w<CR>") -- Save
  vim.keymap.set("v", "<D-c>", '"+y')   -- Copy
  vim.keymap.set("n", "<D-v>", '"+P')   -- Paste normal mode
  -- vim.keymap.set("t", "jk", [[<C-\><C-n>]])
  vim.keymap.set("v", "<D-v>", '"+P')   -- Paste visual mode
  vim.keymap.set("c", "<D-v>", "<C-R>+") -- Paste command mode
  vim.keymap.set("i", "<D-v>", "<C-R>+") -- Paste insert mode
end

-- window management

-- Split windows
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })     -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })   -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" })      -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

-- Tab windows
keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" })                     -- open new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" })              -- close current tab
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" })                     --  go to next tab
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" })                 --  go to previous tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab

-- Plugins Setup

--File explorer "~/.config/nvim/lua/wormcracker/plugins/nvim-tree.lua"
keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file explorer" }) -- toggle file explorer

-- Telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Fuzzy find files" })
keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", { desc = "Fuzzy find recent files" })
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>", { desc = "Find string in cwd" })
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>", { desc = "Find string under cursor in cwd" })
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>", { desc = "Find buffer under cursor in cwd" })          -- list open buffers in current neovim instance
keymap.set("n", "<leader>ft", "<cmd>Telescope colorscheme<cr>", { desc = "Find colorscheme under cursor in cwd" }) -- list available help tags
keymap.set("n", "<leader>fn", "<cmd>Telescope noice<cr>", { desc = "Find all recent noice config" })               -- list available help tags

-- Obsidian
keymap.set("n", "<leader>oo", "<cmd>ObsidianOpen<cr>", { desc = "Open Obsidian from current file" })   -- list available help tags
keymap.set("n", "<leader>os", "<cmd>ObsidianSearch<cr>", { desc = "Open Obsidian from current file" }) -- list available help tags

-- Tagbar
keymap.set("n", "<leader>w", "<cmd>TagbarToggle<cr>", { desc = "Get the tagbar of current file" }) -- list available help tags

-- Noice
keymap.set("n", "<leader>nd", "<cmd>NoiceDismiss<cr>", { desc = "Remove all notification from noice" })

-- previous/next buffer
keymap.set("n", "K", "<cmd>BufferLineCycleNext<CR>")       -- previous buffer
keymap.set("n", "J", "<cmd>BufferLineCyclePrev<CR>")       -- next buffer
keymap.set("n", "<TAB>", "<cmd>BufferLineCycleNext<CR>")   -- previous buffer
keymap.set("n", "<S-TAB>", "<cmd>BufferLineCyclePrev<CR>") -- next buffer
keymap.set("n", "<leader>x", "<cmd>:bn|bd#<CR>")           -- delete buffer
keymap.set("i", "<C-TAB>", "<cmd>BufferLineCycleNext<CR>") -- next buffer
keymap.set("i", "<S-TAB>", "<cmd>BufferLineCyclePrev<CR>") -- next buffer
keymap.set("n", "<C-1>", "<cmd>BufferLineGoToBuffer 1<CR>")
keymap.set("n", "<C-2>", "<cmd>BufferLineGoToBuffer 2<CR>")
keymap.set("n", "<C-3>", "<cmd>BufferLineGoToBuffer 3<CR>")
keymap.set("n", "<C-4>", "<cmd>BufferLineGoToBuffer 4<CR>")
keymap.set("n", "<C-5>", "<cmd>BufferLineGoToBuffer 5<CR>")

--Markdown Preview/toggle
keymap.set("n", "<leader>ms", "<cmd>MarkdownPreview<CR>")     -- Preview Markdown
keymap.set("n", "<leader>me", "<cmd>MarkdownPreviewStop<CR>") -- Preview Markdown

--Liveserver
keymap.set("n", "<leader>k", "<cmd>LiveServerToggle<cr>", { desc = "Toggle Live Server" })

--Misc
keymap.set("n", "<leader>oi", function()
  -- Insert 3 empty lines above and move to the 2nd line
  vim.api.nvim_input("O<Esc>o<Esc>k<Esc>O<Esc>ji")
end, { desc = "Insert 3 lines above and move to 2nd line" })
