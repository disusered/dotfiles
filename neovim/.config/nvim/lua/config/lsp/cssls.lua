-- Enable snippetSupport in capabilities
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

require'lspconfig'.cssls.setup {
  -- Attach capabilities to CSS language server
  capabilities = capabilities,

  on_attach = function(client, bufnr)
    -- Register keymaps
    require'config.lsp.maps'(client, bufnr)

    -- Attach LSP signature plugin and config
    require'config.lspsignature'()

    -- Attach LSP kind plugin and config
    require'config.lspkind'()
  end
}
