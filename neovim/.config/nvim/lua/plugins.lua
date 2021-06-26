local packer = require'packer'
local util = require'packer.util'

packer.init({
  package_root = util.join_paths(vim.fn.stdpath('data'), 'site', 'pack'),
  luarocks = {
    -- TODO: Find the luarocks paths
    -- setup_paths = '/usr/local/lib/luarocks/'
  }
})

-- Install LuaRocks integration
require'packer.luarocks'.install_commands()

return packer.startup(function(use)

  -----------------------------------------------------------------------------
  -- Meta
  -----------------------------------------------------------------------------
  --
  use_rocks 'stdlib'
  use_rocks 'luafilesystem'

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
  use { 'folke/tokyonight.nvim', requires = {'hoob3rt/lualine.nvim'} }

  -- Add keybinding helper
  use "folke/which-key.nvim"

  -- Add window closer
  use 'moll/vim-bbye'

  -----------------------------------------------------------------------------
  -- Text Editing plugins
  -----------------------------------------------------------------------------

  -- Easily manipulate parentheses, brackets, quotes, XML tags, and more
  use { 'tpope/vim-surround', requires = {'tpope/vim-repeat'} }

  -- Handy bracket mappings
  use { 'tpope/vim-unimpaired', requires = {'tpope/vim-repeat'} }

  -- Colorize hex/rgba/hsla codes
  use 'norcalli/nvim-colorizer.lua'

  -- Allow commenting current line, visual selection or motion
  use 'b3nj5m1n/kommentary'

  -- EasyMotion-like movement
  -- use 'justinmk/vim-sneak'
  use { 'phaazon/hop.nvim', as = 'hop' }

  -- Add indent lines
  use { 'lukas-reineke/indent-blankline.nvim', branch="lua" }

  -----------------------------------------------------------------------------
  -- Language & Syntax
  -----------------------------------------------------------------------------

  -- Elixir syntax
  use 'elixir-editors/vim-elixir'

  -- Markdown
  use {'iamcco/markdown-preview.nvim', run = function() vim.fn['mkdp#util#install'](0) end}

  -----------------------------------------------------------------------------
  -- IDE plugins
  -----------------------------------------------------------------------------

  -- Adds Unix file manipulation :Commands
  use 'tpope/vim-eunuch'

  -- LSP
  use { 'glepnir/lspsaga.nvim', requires = {'neovim/nvim-lspconfig'} }

  -- Git support
  use 'tpope/vim-fugitive'

  -- TreeSitter integration
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
    requires = {
      -- Improved match with %
      {'andymass/vim-matchup', event = 'VimEnter'},
      -- Automatically close tags using TreeSitter
      {'windwp/nvim-ts-autotag'}
    }
  }

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

  -- Completion
  use {
    'hrsh7th/nvim-compe',
    requires = {
      {'hrsh7th/vim-vsnip', opt = true},
      {'hrsh7th/vim-vsnip-integ', opt = true},
      {'ray-x/lsp_signature.nvim'}
    }
  }

  -- Diagnostics
  use {
    "folke/trouble.nvim",
    requires = "kyazdani42/nvim-web-devicons"
  }

  -- Enable GitGutter like signs
  use {
    'lewis6991/gitsigns.nvim',
    requires = {'nvim-lua/plenary.nvim'}
  }

  -----------------------------------------------------------------------------
  -- Etc
  -----------------------------------------------------------------------------

  -- TODO: Enable and configure Neovim+Chrome integration
  -- Post-install/update hook with call of vimscript function with argument
  -- use { 'glacambre/firenvim', run = function() vim.fn['firenvim#install'](0) end }
end)
