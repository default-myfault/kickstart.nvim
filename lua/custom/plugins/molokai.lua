return {
  'tanvirtin/monokai.nvim',
  lazy = false,
  priority = 999,
  config = function()
    require('monokai').setup {
      italics = false,

      palette = {
        base1 = '#111111',
        base2 = '#0D1011',
        base3 = '#333333',
        base4 = '#444444',
      },
      custom_hlgroups = {
        ['@constructor'] = {
          fg = '#ffffff',
        },
        -- ['@storageclass'] = {
        --   fg = '#ffffff',
        -- },
        --   ['@text.environment.name'] = {
        --     fg = '#ffffff',
        --   },
        -- Typedef = {
        --   fg = '#ffffff',
        -- },
        -- },
      },
    }
  end,
}
