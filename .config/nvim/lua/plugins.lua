require('packer').startup({function(use)
  use 'wbthomason/packer.nvim'

  -- performance
  use("nathom/filetype.nvim")
  use 'lewis6991/impatient.nvim'

  -- colorschemes
  use { "ellisonleao/gruvbox.nvim",
    requires = {"rktjmp/lush.nvim"},
    config = 'vim.cmd([[colorscheme gruvbox]])'
  }

  -- files
  use { 'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons',
    config = function() require'nvim-tree-config' end
  }

  use { 'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} },
    config = function() require 'telescope-config' end
  }

  use 'nvim-telescope/telescope-project.nvim'

  -- editor basics
  use 'tpope/vim-commentary'
  use 'tpope/vim-surround'
  use 'tpope/vim-repeat'
  use {
    "Pocco81/AutoSave.nvim",
    config = function() require'autosave-config' end
  }
  use { 'norcalli/nvim-colorizer.lua',
    config = function() require'colorizer'.setup() end
  }

  -- movements
  use 'ggandor/lightspeed.nvim'

  -- automatic resizing focussed window
  use { "beauwilliams/focus.nvim",
    config = function() require("focus").setup() end
  }

  -- highlighting
  use { 'nvim-treesitter/nvim-treesitter',
    config = function() require'treesitter-config' end,
    run = ':TSUpdate'
  }

  -- lsp
  use { 'neovim/nvim-lspconfig', }
  use { 'williamboman/nvim-lsp-installer',
    config = function() require'lsp-installer-config' end,
    requires = 'nvim-lspconfig'
  }

  use {'ray-x/lsp_signature.nvim', config = function() require "lsp_signature".setup() end }

  use { 'ray-x/navigator.lua',
    requires = {'ray-x/guihua.lua', run = 'cd lua/fzy && make'},
    after = 'nvim-lspconfig',
    config = {
      function() require'navigator'.setup ({
        -- todo match gruvbox colors
          -- vim.cmd([[hi default GHTextViewDark guifg=#e0d8f4 guibg=#332e55]]),
          -- vim.cmd([[hi default GHListDark guifg=#e0d8f4 guibg=#103234]]),
          -- vim.cmd([[hi default GHListHl guifg=#e0d8f4 guibg=#404254]]),
          lsp_installer = true,
          keymaps = {
            {key = "gR", func = "require('navigator.reference').reference()"},
            {key = "]e", func = "diagnostic.goto_next({ border = 'rounded', max_width = 80})"},
            {key = "[e", func = "diagnostic.goto_prev({ border = 'rounded', max_width = 80})"},
          },
      }) end
    }
  }

  -- completion
  use {
    {'hrsh7th/nvim-cmp', config = function() require'cmp-config' end },

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
    after = 'friendly-snippets',
    config = function ()
      require("luasnip/loaders/from_vscode").lazy_load()
      -- require'luasnip'.filetype_extend("vue", {"html"})
    end
  }


  -- integeration
  use 'tpope/vim-fugitive'
  use 'rbong/vim-flog'

  use {
    'lewis6991/gitsigns.nvim',
    requires = { 'nvim-lua/plenary.nvim' },
    config = function() require('gitsigns-config') end
  }

  -- terminal
  use { "akinsho/toggleterm.nvim",
    config = function() require'toggleterm-config' end
  }

  -- looks
  use {
    'nvim-lualine/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons', opt = true},
    config = function() require'lualine-config' end
  }

  use {'glepnir/dashboard-nvim',
    config = function() require 'dashboard-config' end
  }

  vim.g.dashboard_default_executive ='telescope'

  -- other
  use 'wakatime/vim-wakatime'

end,
config = {
  -- Move to lua dir so impatient.nvim can cache it
  compile_path = vim.fn.stdpath('config')..'/lua/packer_compiled.lua',
  git = {
    depth = 1
  },
}
})

