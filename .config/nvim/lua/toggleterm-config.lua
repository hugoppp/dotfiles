require("toggleterm").setup{
  open_mapping = [[<c-\>]],
}

function _G.set_terminal_keymaps()
  local opts = {noremap = true}
  vim.api.nvim_buf_set_keymap(0, 't', '<esc>', [[<C-\><C-n>]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', 'jk', [[<C-\><C-n>]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', '<C-h>', [[<C-\><C-n><C-W>h]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', '<C-j>', [[<C-\><C-n><C-W>j]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', '<C-k>', [[<C-\><C-n><C-W>k]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', '<C-l>', [[<C-\><C-n><C-W>l]], opts)

  vim.api.nvim_buf_set_keymap(0, 't', '<C-t>', [[<C-\><C-n>:ToggleTerm<CR>]], opts)
end
-- if you only want these mappings for toggle term use term://*toggleterm#* instead
vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')

vim.api.nvim_set_keymap('n', [[<leader>ft]], ':ToggleTerm dir=git_dir direction=float<CR>', {})
vim.api.nvim_set_keymap('n', [[<leader>vt]], ':ToggleTerm dir=git_dir size=40 direction=vertical<CR>', {})
vim.api.nvim_set_keymap('n', [[<leader>ht]], ':ToggleTerm dir=git_dir direction=horizontal<CR>', {})



