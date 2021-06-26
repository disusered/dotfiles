require'lspconfig'.elixirls.setup{
  -- $HOME and ~ are not expanded
  cmd = { vim.loop.os_homedir().."/.dotfiles/vendor/elixir-ls/release/language_server.sh" },

  on_attach = function(client, bufnr)
    -- Register keymaps
    require'config.lsp.maps'(bufnr)

    -- Attach LSP signature plugin and config
    require'config.lspsignature'()
  end
}
