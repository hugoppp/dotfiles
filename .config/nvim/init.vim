let mapleader=" "

if exists('g:started_by_firenvim')
  source $NVIMHOME/firenvim.vim
else
  set laststatus=2
endif

lua require('impatient')
lua require('packer_compiled')
lua require'impatient'.enable_profile()
lua require'telescope'.load_extension('project')

let g:did_load_filetypes=1

let $NVIMHOME = $HOME . '/.config/nvim'
"snippets
source $NVIMHOME/fzf-buffer-delete.vim

luafile $NVIMHOME/lua/toggleterm-config.lua
luafile $NVIMHOME/lua/nvim-tree-config.lua
luafile $NVIMHOME/lua/autosave-config.lua
luafile $NVIMHOME/lua/lsp-config.lua
luafile $NVIMHOME/lua/treesitter-config.lua
luafile $NVIMHOME/lua/lualine-config.lua
luafile $NVIMHOME/lua/plugins.lua
luafile $NVIMHOME/lua/telescope-config.lua
luafile $NVIMHOME/lua/cmp-config.lua
luafile $NVIMHOME/lua/dashboard-config.lua

source $NVIMHOME/settings.vim
source $NVIMHOME/keys.vim
source $NVIMHOME/keys-idea.vim

colorscheme gruvbox

set guifont=JetBrainsMono\ NF:h13

augroup highlight_yank
    autocmd!
    au TextYankPost * silent! lua vim.highlight.on_yank { higroup='IncSearch', timeout=200 }
augroup END

command! G vert Git


if !exists('g:started_by_firenvim')
hi Normal guibg=NONE ctermbg=NONE
endif

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


" lsp bindings
nnoremap <silent><leader>ca <cmd>lua require('lspsaga.codeaction').code_action()<CR>
vnoremap <silent><leader>ca :<C-U>lua require('lspsaga.codeaction').range_code_action()<CR>

nnoremap <silent><leader>sr <cmd>lua require('lspsaga.rename').rename()<CR>

nnoremap <silent> K <cmd>lua require('lspsaga.hover').render_hover_doc()<CR>
nnoremap <silent> gh <cmd>lua require'lspsaga.provider'.lsp_finder()<CR>

nnoremap <silent> [e <cmd>lua require'lspsaga.diagnostic'.lsp_jump_diagnostic_prev()<CR>
nnoremap <silent> ]e <cmd>lua require'lspsaga.diagnostic'.lsp_jump_diagnostic_next()<CR>
 
" show signature help
nnoremap <silent> gs <cmd>lua require('lspsaga.signaturehelp').signature_help()<CR>

nnoremap <silent> gd :Lspsaga preview_definition<CR>

