require('packer').startup({function(use)
  use 'wbthomason/packer.nvim'

  -- performance
  use("nathom/filetype.nvim")
  use 'lewis6991/impatient.nvim'

  -- colorschemes
  use {"ellisonleao/gruvbox.nvim", requires = {"rktjmp/lush.nvim"}}

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

  use 'nvim-telescope/telescope-project.nvim'

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
  use 'williamboman/nvim-lsp-installer'
  use 'glepnir/lspsaga.nvim'

  use {
    'hrsh7th/nvim-cmp',

    { 'hrsh7th/cmp-nvim-lsp', requires = {'neovim/nvim-lspconfig'} } ,
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-cmdline',
    'hrsh7th/cmp-vsnip',
    'hrsh7th/vim-vsnip'
  }

  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }


  -- integeration
  use 'tpope/vim-fugitive'
  use 'rbong/vim-flog'

  use {
    'lewis6991/gitsigns.nvim',
    requires = { 'nvim-lua/plenary.nvim' },
    config = function() require('gitsigns').setup() end
  }

  -- terminal
  use {"akinsho/toggleterm.nvim"}

  -- looks
  use {
    'nvim-lualine/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons', opt = true},
    config = function() require'lualine'.setup {} end
  }

  use 'glepnir/dashboard-nvim'
  vim.g.dashboard_default_executive ='telescope'
  -- use {
  --   "goolord/alpha-nvim",
  --   requires = { 'kyazdani42/nvim-web-devicons' },
  --   config = function () require'alpha'.setup(require'alpha.themes.startify'.opts) end
  -- }

  -- browser
  use {
    'glacambre/firenvim',
    run = function() vim.fn['firenvim#install'](0) end
  }

  -- other
  use 'wakatime/vim-wakatime'

  ---- language specif ----
  -- markdown preview
  use {"ellisonleao/glow.nvim"}

end,
config = {
  -- Move to lua dir so impatient.nvim can cache it
  compile_path = vim.fn.stdpath('config')..'/lua/packer_compiled.lua'
}
})

