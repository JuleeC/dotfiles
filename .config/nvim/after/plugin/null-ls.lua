local null_ls = require("null-ls")

null_ls.setup({
  sources = {
    -- Linters
    null_ls.builtins.diagnostics.eslint_d, -- JavaScript/TypeScript ESLint
    null_ls.builtins.diagnostics.flake8,   -- Python Flake8
    null_ls.builtins.diagnostics.shellcheck, -- Shell scripts

    -- Formatters
    null_ls.builtins.formatting.prettier,  -- JS/TS/HTML/CSS
    null_ls.builtins.formatting.black,     -- Python
    null_ls.builtins.formatting.stylua,    -- Lua formatter
  },
  diagnostics_format = "[#{c}] #{m} (#{s})",
})

