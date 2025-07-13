vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", ":Ex<CR>", { desc = "Open netrw" })


vim.keymap.set("n", "<CR>", ":noh<CR>", { desc = "cleasr search highlight" })


vim.keymap.set("i", "ö", "(", { desc = "replacing ö with (" })
vim.keymap.set("n", "ö", "(", { desc = "replacing ö with ( in normal mode" })


vim.keymap.set("i", "Ö", "(", { desc = "replacing ö with )" })
vim.keymap.set("n", "Ö", "(", { desc = "replacing ö with ) in normal mode" })
