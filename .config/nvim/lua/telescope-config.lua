-- go
vim.api.nvim_set_keymap('n', 'ga', '<CMD>lua require\'telescope-config\'.project_files()<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', 'gr', '<CMD>lua require\'telescope.builtin\'.oldfiles()<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', 'gb', '<CMD>lua require\'telescope.builtin\'.buffers()<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', 'g?', '<CMD>lua require\'telescope.builtin\'.builtin()<CR>', {noremap = true, silent = true})

-- search
vim.api.nvim_set_keymap('n', '<leader>sa', '<CMD>lua require\'telescope.builtin\'.live_grep()<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>st', '<CMD>lua require\'telescope.builtin\'.current_buffer_fuzzy_find()<CR>', {noremap = true, silent = true})

-- " git
vim.api.nvim_set_keymap('n', '<leader>gb', '<CMD>lua require\'telescope.builtin\'.git_branches()<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>gc', '<CMD>lua require\'telescope.builtin\'.git_commits()<CR>', {noremap = true, silent = true})


-- config
local actions = require('telescope.actions')
require('telescope').setup{
  defaults = {

    file_ignore_patterns = {".git"},

    mappings = {
      -- close on ESC in insert
      i = {
        ["<esc>"] = actions.close
      },
    },
  }
}


local M = {}


M.project_files = function()
  local opts = {} -- define here if you want to define something
  local ok = pcall(require'telescope.builtin'.git_files, opts)
  if not ok then require'telescope.builtin'.find_files(opts) end
end

return M

