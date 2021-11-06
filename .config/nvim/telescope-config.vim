" go
nnoremap <silent>ga <cmd>Telescope git_files<cr>
nnoremap <silent>gA <cmd>Telescope find_files<cr>
nnoremap <silent>gr <cmd>Telescope oldfiles<cr>
nnoremap <silent>gb <cmd>Telescope buffers<cr>

nnoremap <silent>g? <cmd>Telescope builtin<cr>


" search
nnoremap <silent><leader>sa <cmd>Telescope live_grep<cr>
nnoremap <silent><leader>st <cmd>Telescope current_buffer_fuzzy_find<cr>

" git
nnoremap <silent><leader>gb <cmd>Telescope git_branches<cr>
nnoremap <silent><leader>gc <cmd>Telescope git_commits<cr>



