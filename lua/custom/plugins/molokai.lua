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
        ['MatchParen'] = {
          bg = '#dd00dd',
          fg = '#dddddd',
          cterm = 'bold',
        },
      },
    }
  end,
}
