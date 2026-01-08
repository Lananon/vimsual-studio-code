require("config.lazy")
require("config.keymaps")


vim.cmd("startinsert")

require("catppuccin").setup({
	flavour = "mocha"})
vim.cmd.colorscheme "catppuccin"

vim.wo.number = true


