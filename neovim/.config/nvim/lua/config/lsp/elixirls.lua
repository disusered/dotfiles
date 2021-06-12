require'lspconfig'.elixirls.setup{
  -- $HOME and ~ are not expanded
  cmd = { vim.loop.os_homedir().."/.dotfiles/vendor/elixir-ls/release/language_server.sh" }
}
