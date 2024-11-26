return {
  'johmsalas/text-case.nvim',
  config = function()
    require('textcase').setup {
      prefix = '<leader>cc',
    }
  end,
}
