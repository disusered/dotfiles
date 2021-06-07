-- Change runtimepath to nvim-beta
vim.o.runtimepath = vim.o.runtimepath:gsub("/.config/nvim", "/.config/nvim-beta")

-- Import configs
require ('install_packer')
require ('plugins')
require ('globals')
require ('base')
require ('ui')
