Map('n', '<leader>p', [[<cmd>lua require('telescope.builtin').git_files()<cr>]], {})
Map('n', '<leader>f', [[<cmd>lua require('telescope.builtin').find_files()<cr>]], {})
Map('n', '<leader>g', [[<cmd>lua require('telescope.builtin').live_grep()<cr>]], {})
Map('n', '<leader>b', [[<cmd>lua require('telescope.builtin').buffers()<cr>]], {})