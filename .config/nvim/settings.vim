set showcmd
set scrolloff=3
set noshowmode
set noerrorbells

set notimeout
set ttimeout

set termguicolors

set splitbelow
set splitright

"allow switching lines by going left/right
"set whichwrap+=<,>,h,l,[,]

"needed for vimwiki
set nocompatible
filetype plugin on
syntax on

"line numbers
set rnu
set nu

"Sync terminal dir with open file
"set autochdir

set hidden

"autosave / autowrite on git repos
"see autocmds.vim

"system clipboard
"set clipboard+=unnamedplus

"mouse
set mouse=a

"search fixes
set ignorecase
set smartcase
set incsearch

"highlight current line
set nocursorcolumn
set cursorline

"wrap, indents
set breakindent
set breakindentopt=sbr,shift:3
set showbreak=~~>
set autoindent smartindent tabstop=2 shiftwidth=2 softtabstop=2 expandtab

"not temp/swap
set nobackup
set nowritebackup
set noswapfile

"complete
"set complete+=kspell
set completeopt=menuone,longest
set wildmenu
set wildmode=longest:full,full
"set spell spelllang=en_us,de
"shor
"et shortmess+=c

" set winheight=10
" set winwidth=80
" set winminheight=1
" set winminwidth=5
"

" for git gutter
set updatetime=100
