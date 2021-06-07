-- Shortcut to set global
G = vim.api.nvim_set_var

-- Simplifies keymaps
-- @param mode - i, n, etc
-- @param lhs - Left-hand side of map
-- @param rhs - Right-hand side of map
-- @param opts - Options
function Map(mode, lhs, rhs, opts)
  local options = {noremap = true}
  if opts then options = vim.tbl_extend('force', options, opts) end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end
