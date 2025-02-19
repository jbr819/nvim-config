vim.g.mapleader = ' '
vim.keymap.set("n", "<leader>pv",vim.cmd.Ex)
vim.keymap.set("n", "<leader>b", function() vim.cmd("bnext") end)
vim.api.nvim_set_keymap('n', '<leader>w', ':set wrap!<CR>', { noremap = true, silent = true })


vim.keymap.set("n","<leader>y","\"+y")
vim.keymap.set("v","<leader>y","\"+y")
vim.keymap.set("n","<leader>y","\"+Y")

