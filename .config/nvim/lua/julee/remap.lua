vim.g.mapleader = " "

vim.keymap.set("n", "<leader>pv", ":Ex<CR>", { desc = "Open netrw" })

vim.keymap.set("n", "<CR>", ":noh<CR>", { desc = "cleasr search highlight" })

--- remapping the (ö) key and {ä} key
vim.keymap.set("i", "ö", "(", { desc = "replacing ö with (" })

vim.keymap.set("i", "Ö", ")", { desc = "replacing ö with )" })

vim.keymap.set("i", "ä", "{", { desc = "replacing ö with {" })

vim.keymap.set("i", "Ä", "}", { desc = "replacing ö with }" })
