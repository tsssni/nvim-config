vim.g.mapleader = ' '
vim.g.maplocalleader = " "
local map = vim.api.nvim_set_keymap 
local opt = {noremap = true, silent = true}

-- split window
map("n", "s", "", opt)
map("n", "sv", ":vsp<CR>", opt)
map("n", "sh", ":sp<CR>", opt)
map("n", "sc", "<C-w>c", opt)
map("n", "so", "<C-w>o", opt)
map("n", "s=", "<C-w>=", opt)
map("n", "<A-h>", "<C-w>h", opt)
map("n", "<A-j>", "<C-w>j", opt)
map("n", "<A-k>", "<C-w>k", opt)
map("n", "<A-l>", "<C-w>l", opt)
map("n", "<C-Left>", ":resize +5<CR>", opt)
map("n", "<C-Down>", ":vertical resize +10<CR>", opt)
map("n", "<C-Up>", ":vertical resize -10<CR>", opt)
map("n", "<C-Right>", ":resize -5<CR>", opt) 

-- terminal
map("n", ",", "<leader>", opt)
map("n", "<leader>t", ":sp | terminal<CR>", opt)
map("n", "<leader>vt", ":vsp | terminal<CR>", opt)
map("t", "<Esc>", "<C-\\><C-n>", opt)

-- visual indentation
map("v", "J", ":move '>+1<CR>gv-gv", opt)
map("v", "K", ":move '<-2<CR>gv-gv", opt)

-- switch file
map("n", "q", ":q<CR>", opt)
map("n", "w", ":w<CR>", opt)
map("n", "e", ":e", opt)
