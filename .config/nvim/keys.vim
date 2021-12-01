command! BufOnly silent! execute "%bd|e#|bd#" 
nnoremap <silent><leader>bo :BufOnly<CR>

"window
nnoremap <C-H>                <C-W><C-H>
nnoremap <C-J>                <C-W><C-J>
nnoremap <C-K>                <C-W><C-K>
nnoremap <C-L>                <C-W><C-L>

map <silent><leader>fy :%y*<cr>
map <silent><leader>fd :1,$d_<cr>
map <silent><leader>fp :1,$d_<cr>"*p

nnoremap <silent><Up>         :resize -2<CR>
nnoremap <silent><Down>       :resize +2<CR>
nnoremap <silent><Left>       :vertical resize -2<CR>
nnoremap <silent><Right>      :vertical resize +2<CR>
nnoremap <silent><C-A-k>      :resize -5<CR>
nnoremap <silent><C-A-j>      :resize +5<CR>
nnoremap <silent><C-A-h>      :vertical resize -5<CR>
nnoremap <silent><C-A-l>      :vertical resize +5<CR>
