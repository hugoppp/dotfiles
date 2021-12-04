let mapleader=" "

lua require('impatient')
lua require('packer_compiled')
" lua require'impatient'.enable_profile()
lua require'telescope'.load_extension('project')

let $NVIMHOME = $HOME . '/.config/nvim'
"snippets
" source $NVIMHOME/fzf-buffer-delete.vim

" doesn't work ??
:au SpellFileMissing * call Download_spell_file(expand('<amatch>'))

luafile $NVIMHOME/lua/gitsigns-config.lua
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

" lua require'navigator'.setup { lsp_installer = true }

set guifont=JetBrainsMono\ NF:h13

augroup highlight_yank
    autocmd!
    au TextYankPost * silent! lua vim.highlight.on_yank { higroup='IncSearch', timeout=200 }
augroup END

command! G vert Git


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


