return {
  {
    'adoyle-h/lsp-toggle.nvim',
    dependencies = { 'neovim/nvim-lspconfig' },
    config = function()
      require('lsp-toggle').setup()

      vim.keymap.set('n', '<leader>tl', ':ToggleLSP<CR>', { desc = 'LSP: [T]oggle [L]sp' })
    end,
  },
}
