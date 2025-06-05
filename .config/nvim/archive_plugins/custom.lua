local header = {
  [[   ____             __         _           _   _             ]],
  [[  / ___|  ___   ___/ _| ___   | | ___  ___| |_(_) ___  _ __  ]],
  [[  \___ \ / _ \ / __| |_ / _ \  | |/ _ \/ __| __| |/ _ \| '_ \ ]],
  [[   ___) | (_) | (__|  _| (_) | | |  __/ (__| |_| | (_) | | | |]],
  [[  |____/ \___/ \___|_|  \___/  |_|\___|\___|\__|_|\___/|_| |_|]],
  [[                                                            ]],
}

local body = {
  { type = "text", val = "🎉 Welcome to your custom Neovim dashboard!", opts = { position = "center", hl = "Type" } },
  { type = "padding", val = 1 },
  {
    type = "mapping",
    val = {
      { "<Leader>ff", "  Find File", "<cmd>Telescope find_files<CR>" },
      { "<Leader>fg", "  Find Word", "<cmd>Telescope live_grep<CR>" },
      { "<Leader>fo", "  Recent Files", "<cmd>Telescope oldfiles<CR>" },
      { "<Leader>q",  "  Quit Neovim", "<cmd>qa<CR>" },
    },
    opts = { position = "center" },
  },
}

local footer = {
  "",
  "🚀  Code like the wind!",
}

return {
  header = header,
  body = body,
  footer = footer,
}

