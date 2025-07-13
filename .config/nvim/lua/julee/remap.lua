vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", ":Ex<CR>", { desc = "Open netrw" })
vim.keymap.set("n", "<CR>", ":noh<CR>", { desc = "cleasr search highlight" })
vim.keymap.set("i", "ö", "(", { desc = "replacing ö with (" })
