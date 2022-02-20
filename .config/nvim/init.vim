call plug#begin('~/.config/nvim/plugged')

"-------------------=== Code/Project navigation ===-------------
Plug 'ncm2/ncm2'
Plug 'preservim/nerdtree' " A file explorer
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'Xuyuanp/nerdtree-git-plugin' 
Plug 'jeffkreeftmeijer/vim-numbertoggle'
Plug 'preservim/nerdcommenter' " An easy way for commenting out lines
Plug 'dense-analysis/ale'

"-------------------=== Languages support ===-------------------
Plug 'davidhalter/jedi-vim' "Python autocompletion
Plug 'jiangmiao/auto-pairs' "Automatic quote and bracket completion
Plug 'tpope/vim-commentary'
Plug 'Yggdroot/indentLine'
Plug 'neoclide/coc.nvim', {'branch': 'release'} " Code completion engine
Plug 'SirVer/ultisnips' " Snippets engine
Plug 'honza/vim-snippets' " A collection of snippets
Plug 'fladson/vim-kitty' " kitty config syntax highlighting
Plug 'maximbaz/lightline-ale' " Lighline status for errors

"-------------------=== Color Themes ===---------------------
Plug 'ryanoasis/vim-devicons'
Plug 'itchyny/lightline.vim'
Plug 'morhetz/gruvbox'
Plug 'joshdick/onedark.vim'
Plug 'chriskempson/base16-vim'
Plug 'ayu-theme/ayu-vim'
Plug 'connorholyday/vim-snazzy'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'projekt0n/github-nvim-theme'
Plug 'mhinz/vim-startify'

"-------------------=== Utility ===-------------------------------
Plug 'mengelbrecht/lightline-bufferline'
Plug 'tpope/vim-fugitive' " Git status

call plug#end()

" Filetype settings
filetype on
filetype plugin on

" Deoplete settings
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
let g:deoplete#enable_at_startup = 1

"-------------------=== Lighline config ===-----------------------
" lightline color scheme config
let &t_ut="" " kitty recommendation for background issues

if (has("termguicolors"))
 set termguicolors
endif
set background=dark
colorscheme gruvbox

set rtp+=/usr/local/opt/fzf

" set python default path
let g:python3_host_prog = '/usr/local/bin/python3'

let g:coc_node_path = '/usr/local/bin/node'

" reload nvim
nnoremap <silent>sv :source $MYVIMRC<CR>

" clear the highlighting search
nnoremap <silent> ,<space> :nohlsearch<CR>
