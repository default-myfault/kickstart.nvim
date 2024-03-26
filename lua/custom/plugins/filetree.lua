vim.keymap.set('n', '<leader>m', ':NvimTreeFocus<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>M', ':NvimTreeToggle<CR>', { noremap = true, silent = true })

return {
  'nvim-tree/nvim-tree.lua',
  lazy = false,
  config = {
    sort = {
      sorter = 'case_sensitive',
    },
    view = {
      width = 30,
    },
    renderer = {
      group_empty = true,
    },
    filters = {
      dotfiles = false,
    },
  },
}
