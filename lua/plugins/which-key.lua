return {
  { -- Useful plugin to show you pending keybinds.
    'folke/which-key.nvim',
    event = 'VimEnter',
    config = function()
      require('which-key').setup()

      -- Document existing key chains
      require('which-key').add {
        { '<leader>c', group = '[C]ode' },
        { '<leader>d', group = '[D]ocument' },
        { '<leader>r', group = '[R]ename' },
        { '<leader>s', group = '[S]earch' },
        { '<leader>w', group = '[W]orkspace' },
        { '<leader>t', group = '[T]oggle' },
        { '<leader>td', group = '[T]oggle [D]iagnostic' },
        { '<leader>g', group = '[G]it Hunk', mode = { 'n', 'v' } },
        { '<leader>l', group = '[L]sp manipilation' },
        { '<leader>o', group = '[O]pen' },
      }
    end,
  },
}
