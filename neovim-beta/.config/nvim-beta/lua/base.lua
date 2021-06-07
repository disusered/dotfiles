-- Set Python2 host
G('python_host_prog', '/usr/local/bin/python2')

-- Set Python3 host
G('python3_host_prog', '/usr/local/bin/python3')

-- Set Node host from Volta
G('node_host_prog', os.execute('volta which neovim-node-host'))

-- Explicitly set encoding to UTF-8
vim.o.encoding = 'utf-8'

-- Enable live search and replace
vim.o.inccommand = 'split'

--Remap space as leader key
vim.api.nvim_set_keymap('', '<Space>', '<Nop>', { noremap = true, silent=true})

-- Set leader to space
G('mapleader', ' ')

-- Set local leader to m
G('maplocalleader', ' ')
