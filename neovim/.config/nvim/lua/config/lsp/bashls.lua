-- Enable snippetSupport in capabilities
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

require'lspconfig'.bashls.setup{
  -- Attach capabilities to language server
  capabilities = capabilities,

  cmd = { "bash-language-server", "start" },

  cmd_env = {
    GLOB_PATTERN = "*@(.sh|.inc|.bash|.command)"
  },

  filetypes = { "sh" },

  on_attach = function(client, bufnr)
    -- Register keymaps
    require'config.lsp.maps'(bufnr)

    -- Attach LSP signature plugin and config
    require'config.lspsignature'()

    -- Attach LSP kind plugin and config
    require'config.lspkind'()
  end
}