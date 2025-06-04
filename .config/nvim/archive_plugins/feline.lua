local present_feline, feline = pcall(require, "feline")
if not present_feline then
  return
end

local present_vi_mode, vi_mode = pcall(require, "feline.providers.vi_mode")
if not present_vi_mode then
  return
end

local present_git, git = pcall(require, "feline.providers.git")
if not present_git then
  return
end

local present_lsp, lsp = pcall(require, "feline.providers.lsp")
if not present_lsp then
  return
end

local colors = {
  normal = "#a6e3a1",
  insert = "#89b4fa",
  visual = "#f5c2e7",
  replace = "#f38ba8",
  command = "#fab387",
  bg = "#1e1e2e",
  fg = "#cdd6f4",
  grey = "#6c7086",
}

local mode_colors = {
  NORMAL = colors.normal,
  INSERT = colors.insert,
  VISUAL = colors.visual,
  REPLACE = colors.replace,
  COMMAND = colors.command,
}

-- Left
local left = {
  {
    provider = function()
      return "  " .. vi_mode.get_vim_mode()
    end,
    hl = function()
      return {
        fg = colors.bg,
        bg = mode_colors[vi_mode.get_vim_mode()],
        style = "bold",
      }
    end,
  },
  {
    provider = "file_info",
    hl = { fg = colors.fg, bg = colors.bg },
    separator = " ",
    left_sep = " ",
  },
  {
    provider = git.branch,
    hl = { fg = colors.grey, bg = colors.bg },
    icon = " ",
    left_sep = " ",
  },
}

-- Right
local right = {
  {
    provider = "diagnostic_errors",
    hl = { fg = "#f38ba8" },
  },
  {
    provider = "diagnostic_warnings",
    hl = { fg = "#f9e2af" },
  },
  {
    provider = "diagnostic_hints",
    hl = { fg = "#94e2d5" },
  },
  {
    provider = "diagnostic_info",
    hl = { fg = "#89dceb" },
    right_sep = " ",
  },
  {
    provider = function()
        local clients = vim.lsp.get_active_clients({ bufnr = vim.api.nvim_get_current_buf() })
        return (#clients > 0) and " LSP" or ""
     end,

    hl = { fg = colors.grey },
    right_sep = "  ",
  },
}

-- Middle (optional — leave empty)
local middle = {}

feline.setup {
  components = {
    active = {
      left,
      middle,
      right,
    },
    inactive = {
      { { provider = "file_info", left_sep = " ", right_sep = " " } },
      {},
      {},
    },
  },
  theme = colors,
  }
