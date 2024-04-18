vim.g.mapleader = " " -- change this to change <leader>

local key = vim.keymap

-- general
key.set("i", "jk", "<ESC>")
key.set("n", "<leader>nh", ":nohl<CR>")
key.set("n", "x", '"_x')

key.set("n", "<leader>+", "<C-a>")
key.set("n", "<leader>-", "<C-x>")

key.set("n", "<leader>sv", "<C-w>v")
key.set("n", "<leader>ss", "<C-w>s")
key.set("n", "<leader>se", "<C-w>=")
key.set("n", "<leader>sx", ":close<CR>")

key.set("n", "<leader>te", ":tabnew<CR>")
key.set("n", "<leader>tx", ":tabclose<CR>")
key.set("n", "<leader>tn", ":tabn<CR>")
key.set("n", "<leader>tp", ":tabp<CR>")

-- NvimTree
key.set("n", "<leader>ff", ":NvimTreeToggle<CR>")
key.set("n", "<leader>fx", ":NvimTreeCollapse<CR>")

-- Rename
key.set("n", "<leader>rn", ":IncRename ")
-- Telescope
key.set("n", ";f", "<cmd>Telescope find_files<CR>")
key.set("n", ";g", "<cmd>Telescope live_grep<CR>")
key.set("n", ";b", "<cmd>Telescope buffers<CR>")
key.set("n", ";h", "<cmd>Telescope help_tags<CR>")
