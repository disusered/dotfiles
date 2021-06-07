return require('packer').startup(function(use)

  -----------------------------------------------------------------------------
  -- Meta
  -----------------------------------------------------------------------------

  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Sensible defaults for Vim
  use 'tpope/vim-sensible'

  -- Integration with Tmux pane navigation
  use 'christoomey/vim-tmux-navigator'

  -- Status Line
  use {
    'hoob3rt/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons', opt = true}
  }

  -- Colorscheme
  use {
    'folke/tokyonight.nvim',
    requires = {'hoob3rt/lualine.nvim'}
  }

  -- Add keybinding helper
  use "folke/which-key.nvim"

  -----------------------------------------------------------------------------
  -- Text Editing plugins
  -----------------------------------------------------------------------------

  -- Automatically end block structures in supported languages
  use 'tpope/vim-endwise'

  -- Improved match with %
  use 'andymass/vim-matchup'

  -- Colorize hex/rgba/hsla codes
  use 'norcalli/nvim-colorizer.lua'

  -----------------------------------------------------------------------------
  -- IDE plugins
  -----------------------------------------------------------------------------

  -- Git support
  use 'tpope/vim-fugitive'

  -- TreeSitter integration
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

  -- File browsing
  use 'jeetsukumaran/vim-filebeagle'

  -- File picker
  use {
    'nvim-telescope/telescope.nvim',
    requires = {
      {'nvim-lua/popup.nvim'},
      {'nvim-lua/plenary.nvim'},
      {'kyazdani42/nvim-web-devicons', opt = true}
    }
  }

  -- Enable GitGutter like signs
  use {
    'lewis6991/gitsigns.nvim',
    requires = {'nvim-lua/plenary.nvim'}
  }

  -----------------------------------------------------------------------------
  -- Etc
  -----------------------------------------------------------------------------

  -- TODO: Enable and configure MarkdownPreview
  -- use {'iamcco/markdown-preview.nvim', run = 'cd app && yarn install', cmd = 'MarkdownPreview'}

  -- TODO: Enable and configure Neovim+Chrome integration
  -- Post-install/update hook with call of vimscript function with argument
  -- use { 'glacambre/firenvim', run = function() vim.fn['firenvim#install'](0) end }

  -- TODO: Enable and configure GitGutter replacements
  -- Use dependency and run lua function after load
  -- use {
  --   'lewis6991/gitsigns.nvim', requires = { 'nvim-lua/plenary.nvim' },
  --   config = function() require('gitsigns').setup() end
  -- }
end)
