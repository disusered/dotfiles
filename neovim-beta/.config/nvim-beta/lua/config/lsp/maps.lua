local wk = require("which-key")

-- Hover docs with K
Map('n', 'K', [[<cmd>lua require('lspsaga.hover').render_hover_doc()<cr>]])

-- Normal mode
wk.register({
  ["<localleader>"] = {
    name = "LSP",
    -- Definition and references
    d = { [[<cmd>lua require'lspsaga.provider'.lsp_finder()<CR>]], 'Show definitions in popup', noremap=true, silent = true },
    r = { [[<cmd>lua require'lspsaga.provider'.lsp_finder()<CR>]], 'Show references in popup', noremap=true, silent = true },
    -- Code Actions
    ca = { [[<cmd>lua require'lspsaga.codeaction'.code_action()<CR>]], 'Code action', noremap=true, silent=true }
  }
})

-- Visual mode
wk.register({
  ["<localleader>"] = {
    name = "LSP (Visual)",
    -- Code Actions
    ca = { [[:<C-U>lua require('lspsaga.codeaction').range_code_action()<CR>]], 'Code action', noremap=true, silent=true }
  }
}, {
  mode = "v",
})
