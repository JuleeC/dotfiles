local opts = { silent = true, noremap = true }

vim.api.nvim_set_keymap("n", "gd", "<Plug>(coc-definition)", opts)
vim.api.nvim_set_keymap("n", "gr", "<Plug>(coc-references)", opts)
vim.api.nvim_set_keymap("n", "gi", "<Plug>(coc-implementation)", opts)
vim.api.nvim_set_keymap("n", "K", ":call CocActionAsync('doHover')<CR>", opts)
vim.api.nvim_set_keymap("n", "<leader>rn", "<Plug>(coc-rename)", opts)

-- Formatting
vim.cmd [[
  autocmd BufWritePre *.js,*.ts,*.py,*.lua,*.json,*.md :silent! :CocCommand editor.action.formatDocument
]]

