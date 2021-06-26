require'lspconfig'.tsserver.setup{
  -- TSServer start command
  cmd = { "typescript-language-server", "--stdio" },

  -- Start on filetypes
  filetypes = { "javascript", "javascriptreact", "javascript.jsx", "typescript", "typescriptreact", "typescript.tsx" },

  on_attach = function(client, bufnr)
    -- Register keymaps
    require'config.lsp.maps'(bufnr)

    -- Attach LSP signature plugin and config
    require'config.lspsignature'()
  end
}
