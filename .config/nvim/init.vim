let mapleader=" "

let $NVIMHOME = $HOME . '/.config/nvim'

"plugins
source $NVIMHOME/nvim_tree.vim

luafile $NVIMHOME/lua/plugins.lua
luafile $NVIMHOME/lua/lsp.lua

source $NVIMHOME/settings.vim
source $NVIMHOME/keys.vim
source $NVIMHOME/keys-idea.vim
source $NVIMHOME/fzf.vim


colorscheme gruvbox
hi Normal guibg=NONE ctermbg=NONE
 
" Toggle background transparency
let t:isTransparent = 0
function! BGToggleTransparency()
  if t:isTransparent == 0
    hi Normal guibg=#111111 ctermbg=black
    set background=dark
    let t:isTransparent = 1
  else
    hi Normal guibg=NONE ctermbg=NONE
    let t:isTransparent = 0
  endif
endfunction

command Transparency :call BGToggleTransparency()<CR>  
nnoremap <silent><leader>tb :call BGToggleTransparency()<CR>


nnoremap <silent><leader>ca <cmd>lua require('lspsaga.codeaction').code_action()<CR>
vnoremap <silent><leader>ca :<C-U>lua require('lspsaga.codeaction').range_code_action()<CR>

nnoremap <silent><leader>sr <cmd>lua require('lspsaga.rename').rename()<CR>
nnoremap <silent> K <cmd>lua require('lspsaga.hover').render_hover_doc()<CR>
nnoremap <silent> gh <cmd>lua require'lspsaga.provider'.lsp_finder()<CR>

nnoremap <silent> gd :Lspsaga preview_definition<CR>
