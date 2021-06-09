local wk = require("which-key")

-- Hover docs with K
Map('n', 'K', [[<cmd>lua require('lspsaga.hover').render_hover_doc()<cr>]])

-- Next/prev diagnostic
Map('n', '[g', [[<cmd>lua require'lspsaga.diagnostic'.lsp_jump_diagnostic_prev()<CR>]])
Map('n', ']g', [[<cmd>lua require'lspsaga.diagnostic'.lsp_jump_diagnostic_prev()<CR>]])

-- Normal mode
wk.register({
  ["<localleader>"] = {
    name = "LSP",
    -- Rename variable
    r = { [[<cmd>lua require('lspsaga.rename').rename()<CR>]], 'Rename', noremap=true, silent = true },
    -- Definition preview
    p = { [[<cmd>lua require'lspsaga.provider'.preview_definition()<CR>]], 'Preview declaration', noremap=true, silent = true },
    -- Definition and references
    d = { [[<cmd>lua require'lspsaga.provider'.lsp_finder()<CR>]], 'Show declaration and references', noremap=true, silent = true },
    -- Code Actions
    a = { [[<cmd>lua require'lspsaga.codeaction'.code_action()<CR>]], 'Code action', noremap=true, silent=true },
    -- Signature help
    s = { [[<cmd>lua require('lspsaga.signaturehelp').signature_help()<CR>]], 'Signature help', noremap=true, silent=true },
    -- Show line diagnostics
    g = { [[<cmd>lua require'lspsaga.diagnostic'.show_line_diagnostics()<CR>]], 'Line diagnostics', noremap=true, silent=true },
    -- Show cursor diagnostics
    c = { [[<cmd>lua require'lspsaga.diagnostic'.show_cursor_diagnostics()<CR>]], 'Line diagnostics', noremap=true, silent=true },
    -- Format buffer
    p = { [[<cmd>lua vim.lsp.buf.formatting()<CR>]], 'Format buffer', noremap=true, silent=true }
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
