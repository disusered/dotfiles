-- Fix bug with LuaRocks
-- https://github.com/wbthomason/packer.nvim/issues/180
vim.fn.setenv("MACOSX_DEPLOYMENT_TARGET", "10.15")

-- Install Packer if it does not exist
local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path})
  execute 'packadd packer.nvim'
end

-- Only required since we have packer configured as `opt`
-- vim.cmd [[packadd packer.nvim]]
