function T (cmd)
  return "<cmd>lua require'telescope.builtin'." .. cmd .. "(require('telescope.themes').get_ivy({}))<cr>"
end

Map('n', '<leader>p', T('git_files'), {})
Map('n', '<leader>f', T('find_files'), {})
Map('n', '!', T('grep_string'), {})
Map('n', '<leader>l', T('builtin'), {})
Map('n', '<leader>r', T('live_grep'), {})
Map('n', '<leader>b', T('buffers'), {})

local actions = require('telescope.actions')
require('telescope').setup{
  defaults = {
    mappings = {
      i = {
        ["<C-w>"] = actions.send_selected_to_qflist,
        ["<C-q>"] = actions.send_to_qflist,
      },
      n = {
        ["<C-w>"] = actions.send_selected_to_qflist,
        ["<C-q>"] = actions.send_to_qflist,
      },
    },
  }
}
