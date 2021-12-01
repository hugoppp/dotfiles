set showcmd
set scrolloff=3
set noshowmode
set noerrorbells

set notimeout
set ttimeout

set termguicolors

"show up to 20 items in completion pupup
set ph=20
"tranparent popup (in percent)
set pb=20

set splitbelow
set splitright

"line numbers
set rnu
set nu

"Sync terminal dir with open file
set autochdir

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
set completeopt=menu,menuone,noselect
"longest
set wildmenu
set wildmode=longest:full,full
" set spell spelllang=en_us,de
"shor

" for git gutter
set updatetime=100

