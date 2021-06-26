-- Enable snippetSupport in capabilities
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

require'lspconfig'.html.setup {
  -- Attach capabilities to HTML language server
  capabilities = capabilities,

  on_attach = function(client, bufnr)
    -- Register keymaps
    require'config.lsp.maps'(bufnr)

    -- Attach LSP signature plugin and config
    require'config.lspsignature'()
  end
}
