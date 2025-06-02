-- lua/config/oil.lua

-- Setup Oil
require("oil").setup({
  default_file_explorer = true,
  use_default_keymaps = false,
  view_options = {
    show_hidden = true,
  },
  view_options = {
    show_hidden = true,         -- Show dotfiles
    is_always_hidden = function(name, _)
      return name == ".DS_Store" or name == "thumbs.db"
    end,
  },
  float = {
    padding = 2,
    max_width = 100,
    max_height = 30,
    border = "rounded",
    win_options = {
      winblend = 10,
    },
}})

-- Keymap to open Oil
vim.keymap.set("n", "<leader>o", require("oil").open, { desc = "Open parent directory with Oil" })
vim.keymap.set("n", "<leader>pv", require("oil").open, { desc = "Open Oil file explorer" })

