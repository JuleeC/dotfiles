-- lua/config/oil.lua

-- Setup Oil
require("oil").setup({
  default_file_explorer = true,
  view_options = {
    show_hidden = true,
  },
})

-- Keymap to open Oil
vim.keymap.set("n", "<leader>o", require("oil").open, { desc = "Open parent directory with Oil" })

