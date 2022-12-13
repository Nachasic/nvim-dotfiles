local lsp0 = require('lsp-zero')
-- local lsp = require('lspconfig')

lsp0.preset('recommended')

lsp0.ensure_installed({
  'tsserver',
  'eslint',
  'sumneko_lua',
})

lsp0.nvim_workspace()
lsp0.setup()

-- Language-specific settings
-- lsp['tsserver'].setup{
--   on_attach = on_attach,
--   flags = lsp_flags,
-- }

-- lsp['rust-analyzer'].setup{
--   on_attach = on_attach,
--   flags = lsp_flags,
--   -- Server-specific settings
--   settings = {
--     ["rust-analyzer"] = {}
--   }
-- }
