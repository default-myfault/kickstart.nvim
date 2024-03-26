local config = function()
  local theme = require 'lualine.themes.onedark'

  -- set bg transparency in all modes
  theme.normal.c.bg = nil
  --theme.insert.c.bg = nil
  --theme.visual.c.bg = nil
  --theme.replace.c.bg = nil
  ----	theme.command.c.bg = nil

  require('lualine').setup {
    options = {
      icons_enabled = true,
      theme = theme,
      globalstatus = true,
    },
    tabline = {},
    sections = {
      lualine_a = { 'mode' },
      lualine_b = { 'branch', 'diff', 'diagnostics' },
      lualine_c = { 'filename', 'buffers' },
      lualine_x = { 'encoding', 'filetype' },
      lualine_y = {
        'progress',
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
