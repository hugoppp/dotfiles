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

  use { 'junegunn/fzf', run = function() vim.fn['fzf#install()'](0) end }
  vim.g["highlightedyank_highlight_duration"] = 300

  -- editor basics
  use 'tpope/vim-commentary'
  use 'tpope/vim-surround'
  use 'tpope/vim-repeat'
  use 'machakann/vim-highlightedyank'

  -- completion, highlighting
  use 'neovim/nvim-lspconfig'
  use 'glepnir/lspsaga.nvim'
  use 'williamboman/nvim-lsp-installer'

  use 'wakatime/vim-wakatime'

  -- integeration
  use 'tpope/vim-fugitive'
  use 'airblade/vim-gitgutter'

  -- looks
  use 'vim-airline/vim-airline'
  use 'vim-airline/vim-airline-themes'
  use 'mhinz/vim-startify'
  vim.g["startify_custom_header"]= "startify#center(startify#fortune#cowsay())"


end)

  vim.g["airline#extensions#tabline#formatter"] = 'unique_tail_improved'
  -- vim.g["airline_statusline_ontop"] = 1
  vim.g["airline_powerline_fonts"] = 1


require'nvim-tree'.setup()

require'nvim-tree'.setup {
  disable_netrw       = true,
  hijack_netrw        = true,
  open_on_setup       = false,
  ignore_ft_on_setup  = {},
  auto_close          = true,
  open_on_tab         = false,
  hijack_cursor       = false,
  update_cwd          = false,
  update_to_buf_dir   = {
    enable = true,
    auto_open = true,
  },
  diagnostics = {
    enable = false,
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = "",
    }
  },
  update_focused_file = {
    enable      = false,
    update_cwd  = false,
    ignore_list = {}
  },
  system_open = {
    cmd  = nil,
    args = {}
  },
  filters = {
    dotfiles = false,
    custom = {}
  },
  view = {
    width = 30,
    height = 30,
    hide_root_folder = false,
    side = 'left',
    auto_resize = false,
    mappings = {
      custom_only = false,
      list = {}
    }
  }
}
