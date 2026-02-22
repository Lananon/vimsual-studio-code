require("config.lazy")
require("config.keymaps")



require("catppuccin").setup({
	flavour = "mocha"})
vim.cmd.colorscheme "catppuccin"

vim.wo.number = true
vim.wo.relativenumber = true
vim.cmd("Neotree")

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

require("nvim-treesitter").install({ "python", "go", "rust", "c", "cpp", "zig", "lua"})

vim.api.nvim_create_autocmd('FileType', {
  pattern = { '*' },
  callback = function() vim.treesitter.start() end,
})
