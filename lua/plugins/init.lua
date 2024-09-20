require 'plugins.lazy-bootstrap'
require('lazy').setup({
  'tpope/vim-sleuth',
  require 'plugins.colorscheme',
  require 'plugins.autoformat',
  require 'plugins.autocomplete',
  require 'plugins.autopairs',
  require 'plugins.gitsigns',
  require 'plugins.which-key',
  require 'plugins.telescope',
  require 'plugins.lsp',
  require 'plugins.treesitter',
  require 'plugins.indent_line',
  require 'plugins.util.mini',
  require 'plugins.markdown',
}, {
  ui = {
    icons = vim.g.have_nerd_font and {} or {
      cmd = '⌘',
      config = '🛠',
      event = '📅',
      ft = '📂',
      init = '⚙',
      keys = '🗝',
      plugin = '🔌',
      runtime = '💻',
      require = '🌙',
      source = '📄',
      start = '🚀',
      task = '📌',
      lazy = '💤 ',
    },
  },
})
