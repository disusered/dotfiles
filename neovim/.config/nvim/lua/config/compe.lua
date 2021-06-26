require'compe'.setup {
  enabled = true;
  autocomplete = true;
  debug = false;
  min_length = 1;
  preselect = 'enable';
  throttle_time = 80;
  source_timeout = 200;
  incomplete_delay = 400;
  max_abbr_width = 100;
  max_kind_width = 100;
  max_menu_width = 100;
  documentation = true;

  source = {
    path = true;
    buffer = true;
    calc = true;
    nvim_lsp = true;
    nvim_lua = true;
    vsnip = true;
    ultisnips = false;
  };
}

-- Allow expansion of completions and snippets with Enter key
Map("i", "<CR>", "compe#confirm('<CR>')", {noremap = true, silent = true, expr = true});

-- Map Tab and S-Tab for expand and/or jump depending on context
-- https://github.com/hrsh7th/vim-vsnip#2-setting
Map("i", "<Tab>", "vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<Tab>'", { noremap = false, expr = true });
Map("s", "<Tab>", "vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<Tab>'", { noremap = false, expr = true });

Map("i", "<S-Tab>", "vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>'", { noremap = false, expr = true });
Map("s", "<S-Tab>", "vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>'", { noremap = false, expr = true });

-- Enable snippets in additional contexts
vim.g.vsnip_filetypes = {
  typescriptreact = {"typescript"},
  javascriptreact = {"javascript"},
}
