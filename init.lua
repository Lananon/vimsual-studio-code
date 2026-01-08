require("config.lazy")
-- require("config.keymaps")

vim.keymap.set("i", "<C-BS>", "<C-w>")
vim.keymap.set("i", "<C-Del>", "<C-o>dw")
vim.keymap.set("i", "<C-q>", "<C-o>:qa<CR>")
vim.keymap.set("i", "<C-s>", "<C-o>:w<CR>")
vim.keymap.set("i", "<C-e>", "<C-o>:norm gcc<CR>", {remap = true})

vim.cmd("startinsert")

require("catppuccin").setup({
	flavour = "mocha"})
vim.cmd.colorscheme "catppuccin"

vim.wo.number = true


