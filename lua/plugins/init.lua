require 'plugins.lazy-bootstrap'
-- [[ Configure and install plugins ]]
--
-- To check the current status of your plugins, run
-- :Lazy
--
-- You can press `?` in this menu for help. Use `:q` to close the window
--
-- To update plugins you can run
-- :Lazy update
-- NOTE: Here is where you install your plugins.
require('lazy').setup({
  'tpope/vim-sleuth',

  require 'plugins.startup',

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

  -- NOTE: Next step on your Neovim journey: Add/Configure additional plugins for Kickstart
  --
  -- require 'kickstart.plugins.debug',
  -- require 'kickstart.plugins.lint',
  -- require 'kickstart.plugins.gitsigns', -- adds gitsigns recommend keymaps
}, {
  ui = {
    -- If you are using a Nerd Font: set icons to an empty table which will use the
    -- default lazy.nvim defined Nerd Font icons, otherwise define a unicode icons table
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
