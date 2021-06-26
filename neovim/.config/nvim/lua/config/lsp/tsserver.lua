require'lspconfig'.tsserver.setup{
  -- TSServer start command
  cmd = { "typescript-language-server", "--stdio" },

  -- Start on filetypes
  filetypes = { "javascript", "javascriptreact", "javascript.jsx", "typescript", "typescriptreact", "typescript.tsx" }
}
