local nvim_lsp = require'lspconfig'
local configs = require'lspconfig/configs'

configs.neuronls = {
  default_config = {
    cmd = { vim.loop.os_homedir().."/.nix-profile/bin/neuron", "lsp"};
    filetypes = {'markdown'};
    root_dir = function()
      return vim.loop.cwd()
    end;
    settings = {};
  };
}

nvim_lsp.neuronls.setup{
  root_dir = nvim_lsp.util.root_pattern("neuron.dhall"),

  on_attach = function(client, bufnr)
    -- Register keymaps
    require'config.lsp.maps'(client, bufnr)

    -- Attach LSP signature plugin and config
    require'config.lspsignature'()

    -- Attach LSP kind plugin and config
    require'config.lspkind'()
  end
}
