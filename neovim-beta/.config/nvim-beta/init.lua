-- Change runtimepath to nvim-beta
vim.o.runtimepath = vim.o.runtimepath:gsub("/.config/nvim", "/.config/nvim-beta")

-- Global variables
require ('globals')

-- Basic Vim configuration
require ('base')

-- Bootstraps the package manager
require ('install_packer')

-- Defines plugins and Lua dependencies
require ('plugins')

-- Configures the plugins by requiring config/*
require ('configs')

-- Useful keymaps
require('maps')
