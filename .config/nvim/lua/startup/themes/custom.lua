local header = {
  " _   _      _ _        ",
  "| | | | ___| | | ___   ",
  "| |_| |/ _ \\ | |/ _ \\  ",
  "|  _  |  __/ | | (_) | ",
  "|_| |_|\\___|_|_|\\___/  ",
  "",
}

local body = {
  { type = "text", val = "Welcome to Neovim!", opts = { position = "center", hl = "Type" } },
}

local footer = {
  "",
  "⚡ Start coding!",
}

return {
  header = header,
  body = body,
  footer = footer,
}

