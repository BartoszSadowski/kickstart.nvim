-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- Handle file explorer
vim.keymap.set('n', '<leader>e', ':Explore<CR>', { desc = 'Open file [e]xplorer' })

-- Register handling
vim.keymap.set({ 'n', 'v', 'x' }, '<leader>y', '"+y', { silent = true, desc = '[Y]ank to clipboard' })
vim.keymap.set({ 'n', 'v', 'x' }, '<leader>p', '"+p', { silent = true, desc = '[P]aste from clipboard' })

-- Handling buffer metadata
vim.keymap.set({ 'n' }, '<leader>bfr', function()
  local path = vim.api.nvim_buf_get_name(0)
  print(path)
  vim.fn.setreg('+', path)
end, { desc = '[B]uffer [F]ilename [R]ead' })
vim.keymap.set('n', '<leader>bl', ':e<CR>', { desc = '[B]uffer [L]oad' })
