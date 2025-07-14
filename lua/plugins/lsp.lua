vim.keymap.del('n', 'grn')
vim.keymap.del('n', 'gra')
vim.keymap.del('n', 'grr')
vim.keymap.del('n', 'gri')

vim.api.nvim_create_user_command('LspInfo', 'checkhealth vim.lsp', {})

vim.lsp.config('*', {
  on_attach = function(client, bufnr)
    print 'attached'
    -- Navigation
    vim.keymap.set('n', 'gd', require('telescope.builtin').lsp_definitions, { desc = '[G]oto [D]efinition' })
    vim.keymap.set('n', 'gr', require('telescope.builtin').lsp_references, { desc = '[G]oto [R]eferences' })

    -- Actions
    vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, { desc = '[R]e[n]ame' })
    vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, { desc = '[C]ode [A]ction' })

    client.server_capabilities.semnticTokensProvider = vim.NIL
  end,
})

local lsp_servers = {
  bashls = 'bash-language-server',
  cssls = 'vscode-css-language-server',
  cucumber_language_server = 'cucumber-language-server',
  eslint = 'vscode-eslint-language-server',
  gradle_ls = 'gradle-language-server',
  groovyls = 'groovy-language-server',
  intelephense = 'intelephense',
  lua_ls = 'lua-language-server',
  ts_ls = 'typescript-language-server',
}

local function enableLSPs()
  for server_name, lsp_executable in pairs(lsp_servers) do
    if vim.fn.executable(lsp_executable) == 1 then
      vim.lsp.enable { server_name }
    end
  end
end

return {
  {
    'mason-org/mason.nvim',
    opts = {},
    config = function()
      require('mason').setup()
      enableLSPs()
    end,
  },
}
