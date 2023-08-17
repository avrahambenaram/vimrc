vim.keymap.set("n", "<leader>gsg", vim.cmd.Git);
vim.keymap.set("n", "<leader>gsc", ":Git commit<CR>")
vim.keymap.set("n", "<leader>gsp", ":Git push<CR>")
vim.keymap.set("n", "<leader>gsP", ":Git pull<CR>")
vim.keymap.set("n", "<leader>gsb", ":Git checkout ", {noremap = false})
