require('lualine').setup({
  options = {
    theme = 'darkgray',
    icons_enabled = true,
    component_separators = { left = '', right = '' },
    section_separators = { left = '', right = '' },
    disabled_filetypes = {},
    always_divide_middle = true,
  },
  sections = {
    lualine_a = { 'mode' },
    lualine_b = { 'branch', 'location' },
    -- lualine_c = {'filename',{lsp.lsp_client },},
    lualine_x = { 'diagnostics', 'encoding', 'fileformat', 'filetype' },
    lualine_y = { 'progress' },
    lualine_z = { 'diagnostics' }
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = { 'filename' },
    lualine_x = { 'location' },
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  extensions = {}
})
