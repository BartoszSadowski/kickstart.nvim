return {
  {
    'OXY2DEV/markview.nvim',
    lazy = false,
    dependencies = {
      'nvim-treesitter/nvim-treesitter',
      'nvim-tree/nvim-web-devicons',
    },
    config = function()
      vim.keymap.set('n', '<leader>tm', ':Markview<CR>', { desc = '[T]oggle [M]arkview' })

      vim.opt.conceallevel = 0
    end,
  },
}
