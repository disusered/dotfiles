-- Change runtimepath to nvim-beta
vim.o.runtimepath = vim.o.runtimepath:gsub("/.config/nvim", "/.config/nvim-beta")

-- Global variables
require ('globals')

-- Bootstraps the package manager
require ('install_packer')

-- Defines plugins and Lua dependencies
require ('plugins')

-- Configures the plugins by requiring config/*
require ('configs')

-- Basic Vim configuration
require ('base')

-- UI, colorscheme, etc
require ('ui')
