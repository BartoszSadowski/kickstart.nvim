return {
  {
    'catppuccin/nvim',
    priority = 1000, -- Make sure to load this before all the other start plugins.
    init = function()
      require('catppuccin').setup {}

      -- vim.opt.termguicolors = true
      vim.cmd.colorscheme 'catppuccin-frappe'

      -- Configure highlights
      vim.cmd.hi 'Comment gui=none'
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
