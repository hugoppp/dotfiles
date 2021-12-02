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

  -- movements
  use 'ggandor/lightspeed.nvim'

  -- automatic resizing focussed window
  use { "beauwilliams/focus.nvim", config = function() require("focus").setup() end }

  -- highlighting
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }

  -- lsp
  use {
    'neovim/nvim-lspconfig',
    'williamboman/nvim-lsp-installer',
    'glepnir/lspsaga.nvim',
  }

  -- completion
  use {
    'hrsh7th/nvim-cmp',

    { 'hrsh7th/cmp-nvim-lsp', requires = {'neovim/nvim-lspconfig'} } ,
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-cmdline', -- v0.6.0: freeze when using !:
    'saadparwaiz1/cmp_luasnip',
  }

  -- snippets
  use "rafamadriz/friendly-snippets"
  use {
    'L3MON4D3/LuaSnip',
    -- after = 'friendly-snippets',
    config = function ()
      require("luasnip/loaders/from_vscode").lazy_load()
      require'luasnip'.filetype_extend("vue", {"html"})
    end
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

  -- other
  use 'wakatime/vim-wakatime'

end,
config = {
  -- Move to lua dir so impatient.nvim can cache it
  compile_path = vim.fn.stdpath('config')..'/lua/packer_compiled.lua'
}
})

