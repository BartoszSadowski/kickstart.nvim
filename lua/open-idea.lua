vim.keymap.set('n', '<leader>oi', function()
  local path = vim.api.nvim_buf_get_name(0)
  local row = unpack(vim.api.nvim_win_get_cursor(0))
  local command = ('idea --line ' .. row .. ' ' .. path .. '')
  print(command)
  return os.execute(command)
end, { desc = '[O]pen line in [I]dea' })
