-- Set Python2 host
G('python_host_prog', '/usr/local/bin/python2')

-- Set Python3 host
G('python3_host_prog', '/usr/local/bin/python3')

-- Set Node host from Volta
-- TODO: Fix in projects, maybe use system node
-- G('node_host_prog', os.execute('volta which neovim-node-host'))


-- Use system clipboard as default
vim.o.clipboard = 'unnamed'

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

-- Set characters to distinguish tabs and spaces
vim.o.list = true
vim.o.listchars = 'trail:●,tab:⇥ᐧ,extends:▸,precedes:◂'

-- Show column at 80 characters
vim.o.colorcolumn = '80'

-- Configure default tabstop
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.softtabstop = 2
vim.o.expandtab = true

-- Don't wrap lines by default
vim.o.wrap = false

-- Configure line breaks
vim.o.linebreak = true
vim.o.breakindent = true
vim.o.showbreak = ' ...'

-- Allow panes to be fully collapsed
vim.o.winminheight = 0

-- Use smart case when searching
vim.o.ignorecase = true
vim.o.smartcase = true

-- Default to /g with %s/foo/bar
vim.o.gdefault = true

-- Pattern to ignore when expanding wildcards, file/dir, or globs
vim.o.wildignore = vim.o.wildignore .. '.git*,.hg*,.svn*,node_modules/**,'

-- Disable automatic backups
vim.o.backup = false
vim.o.writebackup = false

-- Disable swap file
vim.o.swapfile = false

-- Set spellfile
vim.o.spellfile = vim.loop.os_homedir() .. '/.dotfiles/vim/spellfile.utf-8.add'

-- Start diff with vertical splits
vim.o.diffopt = vim.o.diffopt .. ',vertical'

-- Lower threshhold before CursorHold autocommand is run
vim.o.updatetime = 750

-- Configure completion menu
vim.o.completeopt = "menuone,noselect"
