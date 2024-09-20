return {
  {
    'AlexvZyl/nordic.nvim',
    priority = 1000, -- Make sure to load this before all the other start plugins.
    init = function()
      vim.cmd.colorscheme 'nordic'

      -- Configure highlights
      vim.cmd.hi 'Comment gui=none'

      -- Set colors
      vim.api.nvim_set_hl(0, 'LineNrAbove', { fg = '#4B6B8F', bold = true })
      vim.api.nvim_set_hl(0, 'LineNrBelow', { fg = '#4B6B8F', bold = true })
      vim.api.nvim_set_hl(0, 'Comment', { fg = '#758296' })
      vim.api.nvim_set_hl(0, '@comment', { link = 'Comment' })
    end,
  },
  -- Highlight todo, notes, etc in comments
  {
    'folke/todo-comments.nvim',
    event = 'VimEnter',
    dependencies = { 'nvim-lua/plenary.nvim' },
    opts = { signs = false },
  },
}
