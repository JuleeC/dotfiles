local graydark = {
  normal = {
    a = { bg = '#444444', fg = '#ffffff', gui = 'bold' },
    b = { bg = '#333333', fg = '#eeeeee' },
    c = { bg = '#222222', fg = '#dddddd' },
  },
  insert = {
    a = { bg = '#5f87af', fg = '#ffffff', gui = 'bold' },
    b = { bg = '#333333', fg = '#eeeeee' },
    c = { bg = '#222222', fg = '#dddddd' },
  },
  visual = {
    a = { bg = '#af5f5f', fg = '#ffffff', gui = 'bold' },
    b = { bg = '#333333', fg = '#eeeeee' },
    c = { bg = '#222222', fg = '#dddddd' },
  },
  replace = {
    a = { bg = '#ff8700', fg = '#ffffff', gui = 'bold' },
    b = { bg = '#333333', fg = '#eeeeee' },
    c = { bg = '#222222', fg = '#dddddd' },
  },
  inactive = {
    a = { bg = '#222222', fg = '#aaaaaa', gui = 'bold' },
    b = { bg = '#222222', fg = '#888888' },
    c = { bg = '#222222', fg = '#666666' },
  },
}

require('lualine').setup {
  options = {
    theme = graydark,
    ...
  }
}

