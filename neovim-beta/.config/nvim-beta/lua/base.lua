-- Set Python2 host
G('python_host_prog', '/usr/local/bin/python2')

-- Set Python3 host
G('python3_host_prog', '/usr/local/bin/python3')

-- Set Node host from Volta
-- TODO: Fix in projects, maybe use system node
-- G('node_host_prog', os.execute('volta which neovim-node-host'))

-- Enable live search and replace
vim.o.inccommand = 'split'

-- Enable 24-bit RGB color in TUI (Darwin)
vim.o.termguicolors = true

-- Automatically set current directory to shell
vim.o.autochdir = true

-- Enable line numbers
vim.o.number = true

-- Enable hidden buffers
vim.o.hidden = true

--Remap space as leader key
vim.api.nvim_set_keymap('', '<Space>', '<Nop>', { noremap = true, silent=true})

-- Set leader to space
G('mapleader', ' ')

-- Set local leader to m
G('maplocalleader', 'm')

-- Enable mouse mode
vim.o.mouse = 'a'
