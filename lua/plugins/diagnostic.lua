return {
  'rachartier/tiny-inline-diagnostic.nvim',
  event = 'VeryLazy', -- Or `LspAttach`
  priority = 1000, -- needs to be loaded in first
  config = function()
    vim.diagnostic.config { virtual_text = false }
    require('tiny-inline-diagnostic').setup {
      preset = 'powerline',
      multiple_diag_under_cursor = true,
    }

    vim.keymap.set('n', '<leader>tda', function()
      vim.diagnostic.config { virtual_text = true }
      require('tiny-inline-diagnostic').disable()
    end, { desc = '[T]oggle [D]iagnostic [A]ll' })

    vim.keymap.set('n', '<leader>tdt', function()
      vim.diagnostic.config { virtual_text = false }
      require('tiny-inline-diagnostic').enable()
    end, { desc = '[T]oggle [D]iagnostic [T]iny' })

    vim.keymap.set('n', '<leader>tdn', function()
      vim.diagnostic.config { virtual_text = false }
      require('tiny-inline-diagnostic').disable()
    end, { desc = '[T]oggle [D]iagnostic [N]one' })

      vim.keymap.set('n', '<leader>tdf', function ()
      vim.diagnostic.open_float();
      end, {desc = '[T]oggle [D]iagnostic [F]loat' })
  end,
}
