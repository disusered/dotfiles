-- Enable snippetSupport in capabilities
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

require'lspconfig'.cssls.setup {
  -- Attach capabilities to CSS language server
  capabilities = capabilities,
}
