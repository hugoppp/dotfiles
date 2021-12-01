"disable keys
nnoremap K <Nop>
nnoremap Q <Nop>


imap jk <esc>

"o/O but dont leave normal mode
nnoremap zj o<esc>k
nnoremap zk O<esc>j

"insert 1 blank line before

noremap <leader>o o<CR>
noremap <leader>O O<esc>O

nnoremap <leader>p "*p
nnoremap <leader>y "*y
nnoremap <leader>d "*d
nnoremap <leader>P "*P
nnoremap <leader>Y "*Y
nnoremap <leader>D "*D

vnoremap <leader>p "*p
vnoremap <leader>y "*y
vnoremap <leader>d "*d
vnoremap <leader>P "*P
vnoremap <leader>Y "*Y
vnoremap <leader>D "*D

" stay in visual mode
vnoremap < <gv
vnoremap > >gv


"scroll 5 lines instead of 1
nnoremap <C-y> 5<C-y>
nnoremap <C-e> 5<C-e>

"clear search register with
nnoremap <silent><leader>NH :let @/=""<CR>
nnoremap <silent><leader>nh :noh<CR> 

"if has ("win32")
" nnoremap <leader>wp :r!time /t<cr>I- <esc>A 
" nnoremap <leader>wP :r!time /t<cr>kJ
" else
nnoremap <leader>wp i- <esc>:r!date +"%H:%M"<cr>
nnoremap <leader>wP :r!date +"%H:%M"<cr>kJ
" endif
