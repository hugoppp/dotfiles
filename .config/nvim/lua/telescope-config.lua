local options = {noremap = true, silent = true}
local telescope = require('telescope')

-- go
vim.api.nvim_set_keymap('n', 'ga',
  '<CMD>lua require\'telescope\'.custom.project_files()<CR>', options)
vim.api.nvim_set_keymap('n', 'gr',
  '<CMD>lua require\'telescope.builtin\'.oldfiles()<CR>', options)
vim.api.nvim_set_keymap('n', 'gb',
  '<CMD>lua require\'telescope.builtin\'.buffers()<CR>', options)
vim.api.nvim_set_keymap('n', 'g?',
  '<CMD>lua require\'telescope.builtin\'.builtin()<CR>', options)

-- search
vim.api.nvim_set_keymap('n', '<leader>sa',
  '<CMD>lua require\'telescope.builtin\'.live_grep()<CR>', options)
vim.api.nvim_set_keymap('n', '<leader>st',
  '<CMD>lua require\'telescope.builtin\'.current_buffer_fuzzy_find()<CR>', options)

-- " git
vim.api.nvim_set_keymap('n', '<leader>gb',
  '<CMD>lua require\'telescope.builtin\'.git_branches()<CR>', options)
vim.api.nvim_set_keymap('n', '<leader>gc',
  '<CMD>lua require\'telescope.builtin\'.git_commits()<CR>', options)
vim.api.nvim_set_keymap('n', '<leader>gp',
  ":lua require'telescope'.extensions.project.project{}<CR>", options)


-- config
local actions = require('telescope.actions')
telescope.setup{

  defaults = {
    file_ignore_patterns = {"%.git/"},

    mappings = {
      -- close on ESC in insert
      i = {
        ["<esc>"] = actions.close
      },
    },
  }
}

-- custom functions
telescope.custom = {

  project_files = function()
    local ok = pcall(require'telescope.builtin'.git_files, options)
    if not ok then require'telescope.builtin'.find_files(options) end
  end

}

