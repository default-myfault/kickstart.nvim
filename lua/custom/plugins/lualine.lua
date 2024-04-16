local config = function()
  local theme = require 'lualine.themes.molokai'

  local b_bg = '#444444'
  theme.normal.b = { fg = '#ffffff', bg = b_bg }
  theme.normal.c.bg = nil

  require('lualine').setup {
    options = {
      icons_enabled = true,
      theme = theme,
      globalstatus = true,
    },
    sections = {
      lualine_a = { 'mode' },
      lualine_b = { 'branch', 'diff', 'diagnostics' },
      lualine_c = {
        {
          'buffers',
          buffers_color = {
            active = { fg = theme.normal.a.bg, bg = nil },
            inactive = { fg = '#dddddd', bg = nil },
          },
        },
      },
      lualine_x = { 'encoding', 'filetype' },
      lualine_y = {
        {
          'datetime',
          style = '%H:%M',
        },
      },
      lualine_z = { 'location' },
    },
  }
end

return {
  'nvim-lualine/lualine.nvim',
  lazy = false,
  config = config,
}
