-- Insert mode binds 
vim.keymap.set("i", "<C-BS>", "<C-w>")
vim.keymap.set("i", "<C-Del>", "<C-o>dw")
vim.keymap.set("i", "<C-q>", "<C-o>:qa<CR>")
vim.keymap.set("i", "<C-s>", "<C-o>:w<CR>")
vim.keymap.set("i", "<C-e>", "<C-o>:norm gcc<CR>", {remap = true})

-- general useful shit
vim.keymap.set("n", "j", "gj")
vim.keymap.set("n", "k", "gk")
vim.keymap.set("n", "<Esc>", ":noh<CR><Esc>")

-- functions

