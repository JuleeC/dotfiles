-- ~/.config/nvim/lua/settings.lua

local o = vim.o
local wo = vim.wo
local bo = vim.bo
local opt = vim.opt

-- General
o.encoding = 'utf-8'
o.fileencoding = 'utf-8'
o.backup = false
o.swapfile = false
o.undofile = true
o.termguicolors = true
o.hidden = true
o.clipboard = 'unnamedplus'

-- UI
opt.number = true
opt.relativenumber = true
opt.cursorline = true
opt.signcolumn = 'yes'
opt.showmode = false
opt.wrap = false
opt.scrolloff = 8
opt.sidescrolloff = 8

-- Tabs & Indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.smartindent = true
opt.autoindent = true

-- Search
opt.ignorecase = true
opt.smartcase = true
opt.incsearch = true
opt.hlsearch = true

-- Performance
opt.updatetime = 300
opt.timeoutlen = 500

-- Mouse support
opt.mouse = 'a'

-- Split windows
opt.splitbelow = true
opt.splitright = true
