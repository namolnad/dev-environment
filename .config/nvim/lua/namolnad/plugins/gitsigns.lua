return { -- Adds git related signs to the gutter, as well as utilities for managing changes
  'lewis6991/gitsigns.nvim',
  opts = {
    signs = {
      add = { text = '+' },
      change = { text = '~' },
      delete = { text = '_' },
      topdelete = { text = '‾' },
      changedelete = { text = '~' },
    },
  },
  config = function()
    local gitsigns = require 'gitsigns'
    gitsigns.setup()
    vim.keymap.set('n', '<leader>gp', gitsigns.preview_hunk, { desc = 'Preview hunk' })
    vim.keymap.set('n', '<leader>gt', gitsigns.toggle_current_line_blame, { desc = 'Toggle git blame' })
  end,
}
