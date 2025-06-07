-- init.lua or plugins.lua
require("mason").setup()
require("mason-lspconfig").setup()

-- Set up nvim-cmp for autocompletion
--
local cmp = require('cmp')
local lspkind = require('lspkind')

cmp.setup({
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end,
  },
  mapping = cmp.mapping.preset.insert({
    ['<C-b>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.abort(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
  }),
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'luasnip' },
    { name = 'buffer' },
    { name = 'path' },
  }),
  formatting = {
    format = lspkind.cmp_format({
      mode = 'symbol_text',
      maxwidth = 50,
    }),
  },
})

-- Set up LSP servers with Mason
local lspconfig = require('lspconfig')
local capabilities = require('cmp_nvim_lsp').default_capabilities()

-- List of servers to install and configure
local servers = { 'pyright', 'clangd', 'rust_analyzer', 'lua_ls' }

-- Ensure servers are installed
require('mason-lspconfig').setup {
  ensure_installed = servers, -- Automatically install these servers
  automatic_installation = true, -- Install servers automatically if not present
}

-- Configure each server
require('mason-lspconfig').setup_handlers {
  -- Default handler for all servers
  function(server_name)
    lspconfig[server_name].setup {
      capabilities = capabilities,
      -- Server-specific settings (example for lua_ls)
      settings = server_name == 'lua_ls' and {
        Lua = {
          diagnostics = {
            globals = { 'vim' }, -- Recognize 'vim' global for Neovim
          },
        },
      } or {},
    }
  end,
}

-- Keybindings for LSP
vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('UserLspConfig', {}),
  callback = function(ev)
    local opts = { buffer = ev.buf }
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
    vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)
    vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, opts)
    vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
    vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
  end,
})

-- Optional: Customize diagnostics
vim.diagnostic.config({
  virtual_text = true,
  signs = true,
  update_in_insert = false,
})
