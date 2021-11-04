require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  -- colorschemes
  use 'morhetz/gruvbox'
  use 'joshdick/onedark.vim'

  -- files
  use {
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons',
    config = function() require'nvim-tree'.setup {} end
  }

  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- editor basics
  use 'tpope/vim-commentary'
  use 'tpope/vim-surround'
  use 'tpope/vim-repeat'
  use {"Pocco81/AutoSave.nvim"}

  use {'machakann/vim-highlightedyank'}
  vim.g["highlightedyank_highlight_duration"] = 300

  -- window
  -- use {
  --   "luukvbaal/stabilize.nvim",
  --   config = function() require("stabilize").setup() end
  -- }

  use { "beauwilliams/focus.nvim", config = function() require("focus").setup() end }

  -- completion, highlighting
  use 'neovim/nvim-lspconfig'
  use 'glepnir/lspsaga.nvim'
  use 'williamboman/nvim-lsp-installer'

  use 'wakatime/vim-wakatime'

  -- integeration
  use 'tpope/vim-fugitive'
  use 'rbong/vim-flog'
  use 'airblade/vim-gitgutter'

  -- terminal
  use {"akinsho/toggleterm.nvim"}

  -- looks
  use {
    'nvim-lualine/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons', opt = true},
    config = function() require'lualine'.setup {} end
  }

  use 'mhinz/vim-startify'
  vim.g["startify_custom_header"]= "startify#center(startify#fortune#cowsay())"
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }

  -- browser
  use {
    'glacambre/firenvim',
    run = function() vim.fn['firenvim#install'](0) end
}

  ---- language specif ----
  -- markdown preview
  use {"ellisonleao/glow.nvim"}

end)

