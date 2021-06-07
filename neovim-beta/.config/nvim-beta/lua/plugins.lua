return require('packer').startup(function(use)

  -----------------------------------------------------------------------------
  -- Meta
  -----------------------------------------------------------------------------

  -- Lua dependencies
  use_rocks 'luafilesystem'

  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -----------------------------------------------------------------------------
  -- Text Editing plugins
  -----------------------------------------------------------------------------

  -- Automatically end block structures in supported languages
  use 'tpope/vim-endwise'

  -- Improved match with %
  use 'andymass/vim-matchup'

  -----------------------------------------------------------------------------
  -- IDE plugins
  -----------------------------------------------------------------------------

  -- TreeSitter integration
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

  -- File browsing
  use 'jeetsukumaran/vim-filebeagle'

  -- File picker
  use {
    'nvim-telescope/telescope.nvim',
    requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
  }

  -----------------------------------------------------------------------------
  -- Etc
  -----------------------------------------------------------------------------

  -- TODO: Enable and configure MarkdownPreview
  -- use {'iamcco/markdown-preview.nvim', run = 'cd app && yarn install', cmd = 'MarkdownPreview'}

  -- TODO: Enable and configure Neovim+Chrome integration
  -- Post-install/update hook with call of vimscript function with argument
  -- use { 'glacambre/firenvim', run = function() vim.fn['firenvim#install'](0) end }

  -- TODO: Enable and configure statusbar
  -- Use specific branch, dependency and run lua file after load
  -- use {
  --   'glepnir/galaxyline.nvim', branch = 'main', config = function() require'statusline' end,
  --   requires = {'kyazdani42/nvim-web-devicons'}
  -- }

  -- TODO: Enable and configure GitGutter replacements
  -- Use dependency and run lua function after load
  -- use {
  --   'lewis6991/gitsigns.nvim', requires = { 'nvim-lua/plenary.nvim' },
  --   config = function() require('gitsigns').setup() end
  -- }
end)
