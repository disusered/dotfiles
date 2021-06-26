-- Use an on_attach function to only map the following keys 
-- after the language server attaches to the current buffer
local attach_keymaps = function(bufnr)
  local wk = require("which-key")
  local options = {buffer = bufnr}

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
      P = { [[<cmd>lua require'lspsaga.provider'.preview_definition()<CR>]], 'Preview definition', noremap=true, silent = true },
      -- Go to definition
      d = { [[<cmd>lua vim.lsp.buf.definition()<CR>]], 'Go to definition', noremap=true, silent = true },
      -- Go to declaration
      D = { [[<cmd>lua vim.lsp.buf.declaration()<CR>]], 'Go to declaration', noremap=true, silent = true },
      -- Go to reference
      r = { [[<cmd>lua vim.lsp.buf.references()<CR>]], 'Go to reference', noremap=true, silent = true },
      -- Reference preview
      R = { [[<cmd>lua require'lspsaga.provider'.lsp_finder()<CR>]], 'Show references', noremap=true, silent = true },
      -- R = { [[<cmd>TroubleToggle lsp_references<CR>]], 'Go to reference', noremap=true, silent = true },
      -- Go to implementation
      i = { [[<cmd>lua vim.lsp.buf.implementation()<CR>]], 'Go to implementation', noremap=true, silent = true },
      -- Code Actions
      a = { [[<cmd>lua require'lspsaga.codeaction'.code_action()<CR>]], 'Code action', noremap=true, silent=true },
      -- Signature help
      s = { [[<cmd>lua require('lspsaga.signaturehelp').signature_help()<CR>]], 'Signature help', noremap=true, silent=true },
      -- Show line diagnostics
      g = { [[<cmd>lua require'lspsaga.diagnostic'.show_line_diagnostics()<CR>]], 'Line diagnostics', noremap=true, silent=true },
      -- Show cursor diagnostics
      c = { [[<cmd>lua require'lspsaga.diagnostic'.show_cursor_diagnostics()<CR>]], 'Line diagnostics', noremap=true, silent=true },
      -- Format buffer
      p = { [[<cmd>lua vim.lsp.buf.formatting()<CR>]], 'Format buffer', noremap=true, silent=true },
      -- Trouble
      xx = { [[<cmd>TroubleToggle<cr>]], 'Toggle diagnostics', noremap=true, silent = true },
      xw = { [[<cmd>TroubleToggle lsp_workspace_diagnostics<cr>]], 'Workspace diagnostics', noremap=true, silent = true },
      xd = { [[<cmd>TroubleToggle lsp_document_diagnostics<cr>]], 'Document diagnostics', noremap=true, silent = true },
      xq = { [[<cmd>TroubleToggle quickfix<cr>]], 'Quickfix', noremap=true, silent = true },
      xl = { [[<cmd>TroubleToggle loclist<cr>]], 'Location list', noremap=true, silent = true }
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
end

return attach_keymaps
