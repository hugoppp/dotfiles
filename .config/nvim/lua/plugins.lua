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

  use 'junegunn/fzf.vim'

  use {
    'junegunn/fzf',
    run = function() vim.fn['fzf#install()'](0)  end
  }

  -- editor basics
  use 'tpope/vim-commentary'
  use 'tpope/vim-surround'
  use 'tpope/vim-repeat'
  use {"Pocco81/AutoSave.nvim"}

  use {'machakann/vim-highlightedyank'}
  vim.g["highlightedyank_highlight_duration"] = 300

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
  use {'vim-airline/vim-airline'}
  use 'vim-airline/vim-airline-themes'
  vim.g["airline#extensions#tabline#formatter"] = 'unique_tail_improved'
  vim.g["airline_powerline_fonts"] = 1
  vim.g["airline#extensions#tabline#enabled"] = 1
  vim.g["airline#extensions#tabline#left_alt_sep"] = '|'
  vim.g["airline#extensions#tabline#left_sep"] = ' '


  use 'mhinz/vim-startify'
  vim.g["startify_custom_header"]= "startify#center(startify#fortune#cowsay())"
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }


  ---- language specif ----
  -- markdown preview
  use {"ellisonleao/glow.nvim"}

end)

