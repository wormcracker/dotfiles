:set number
:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a

call plug#begin()

Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'https://github.com/preservim/tagbar' " Sidebar
Plug 'https://github.com/glepnir/dashboard-nvim' "Dashboard
Plug 'https://github.com/junegunn/fzf.vim' "Finder
Plug 'https://github.com/Raimondi/delimitMate' "To start and end with same symbol automatically
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/farmergreg/vim-lastplace' "last leftover position
Plug 'https://github.com/preservim/vim-markdown' "Colors

call plug#end()

nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-l> :call CocActionAsync('jumpDefinition')<CR>
nmap <F8> :TagbarToggle<CR>
