vim.g["nvim_tree_quit_on_open"] = 1

-- vim.api.nvim_set_keymap('i', '<Tab>', 'v:lua.smart_tab()', {expr = true, noremap = true})
vim.api.nvim_set_keymap('n', '<leader>ff', ':NvimTreeFindFile<CR>', {})
vim.api.nvim_set_keymap('n', '|', ':NvimTreeFindFile<CR>', {})
vim.api.nvim_set_keymap('n', '<leader>FF', ':NvimTreeToggle<CR>', {})
vim.api.nvim_set_keymap('n', '<leader>fr', 'NvimTreeRefresh<CR>', {})

vim.g.nvim_tree_icons = {
  default = '',
  symlink = '',
  git = {
    unstaged = "", --"✗",
    staged =  "" , --"✓",
    renamed = "" ,--"➜",
    untracked = "",-- "★",
    deleted = "",
    unmerged = "",
    ignored = "◌"
  },
  folder = {
    arrow_open= "",
    arrow_closed= "",
    default = "",
    open = "",
    empty = "",
    empty_open = "",
    symlink = "",
    symlink_open = "",
  }
}

require'nvim-tree'.setup {
  disable_netrw       = true,
  hijack_netrw        = true,
  open_on_setup       = false,
  ignore_ft_on_setup  = {},
  update_to_buf_dir   = {
    enable = true,
    auto_open = true,
  },
  auto_close          = true,
  open_on_tab         = false,
  hijack_cursor       = false,
  update_cwd          = false,
  diagnostics         = {
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
  view = {
    width = 30,
    height = 30,
    side = 'left',
    auto_resize = false,
    mappings = {
      custom_only = false,
      list = {}
    }
  },
  filters = {
    dotfiles = false,
    custom = {}
  }
}
