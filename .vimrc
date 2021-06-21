" Start Vim Vundle Plugins
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" =====================[Themes]===============================
    Plugin 'mhartington/oceanic-next'

    Plugin 'dikiaap/minimalist'

    Plugin 'AlessandroYorba/Sierra'

    Plugin 'arcticicestudio/nord-vim'

    Plugin 'flazz/vim-colorschemes'

    Plugin 'sainnhe/sonokai'

    Plugin 'morhetz/gruvbox'

    Plugin 'tomasr/molokai'

    Plugin 'dracula/vim', { 'name': 'dracula'  }

    "Plugin 'kaicataldo/material.vim'

    Plugin 'simonsmith/material.vim'

    Plugin 'hardcoreplayers/oceanic-material'

" ========[This is recommended for improved syntax highlighting for various languages]======
    Plugin 'sheerun/vim-polyglot'

    Plugin 'scrooloose/syntastic'

    Plugin 'altercation/vim-colors-solarized'

    Plugin 'stephpy/vim-yaml'

    Plugin 'Yggdroot/indentLine'

    Plugin 'jaredgorski/spacecamp'

    Plugin 'jiangmiao/auto-pairs'

" source: https://gist.github.com/Tset-Noitamotua/284a00212aa8a8d23e202c73526f6e9b
"====================[Languages support]========================
    Plugin 'tpope/vim-commentary'               " Comment stuff out
    Plugin 'mitsuhiko/vim-sparkup'              " Sparkup(XML/jinja/htlm-django/etc.) support
    Plugin 'Rykka/riv.vim'                      " ReStructuredText plugin
    Plugin 'Valloric/YouCompleteMe'             " Autocomplete plugin

"====================[Snippets support]=======================
    " Plugin 'garbas/vim-snipmate'                " Snippets manager
    Plugin 'MarcWeber/vim-addon-mw-utils'       " dependencies #1
    Plugin 'tomtom/tlib_vim'                    " dependencies #2
    Plugin 'honza/vim-snippets'                 " snippets repo

"-------------------=== Code/Project navigation ===-------------
    Plugin 'scrooloose/nerdtree'                " Project and file navigation
    Plugin 'jistr/vim-nerdtree-tabs'
    Plugin 'majutsushi/tagbar'                  " Class/module browser
    Plugin 'kien/ctrlp.vim'                     " Fast transitions on project files
    Plugin 'vim-scripts/a.vim'
    Plugin 'xolox/vim-misc'
    Plugin 'xolox/vim-easytags'

"-------------------=== Other ===-------------------------------
    Plugin 'bling/vim-airline'                  " Lean & mean status/tabline for vim
    Plugin 'vim-airline/vim-airline-themes'     " Themes for airline
    Plugin 'Lokaltog/powerline'                 " Powerline fonts plugin
    Plugin 'fisadev/FixedTaskList.vim'          " Pending tasks list
    Plugin 'rosenfeld/conque-term'              " Consoles as buffers
    Plugin 'tpope/vim-surround'                 " Parentheses, brackets, quotes, XML tags, and more

" ----- Working with Git ----------------------------------------------
    Plugin 'airblade/vim-gitgutter'
    Plugin 'tpope/vim-fugitive'

" ----- Syntax plugins ------------------------------------------------
    Plugin 'jez/vim-c0'
    Plugin 'jez/vim-ispc'
    Plugin 'kchmck/vim-coffee-script'

" ----- Other text editing features -----------------------------------
"Plugin 'Raimondi/delimitMate'

" ---- Extras/Advanced plugins ----------------------------------------
" Highlight and strip trailing whitespace
"Plugin 'ntpeters/vim-better-whitespace'
" Easily surround chunks of text
"Plugin 'tpope/vim-surround'
" Align CSV files at commas, align Markdown tables, and more
"Plugin 'godlygeek/tabular'
" Automaticall insert the closing HTML tag
    Plugin 'HTML-AutoCloseTag'
" Make tmux look like vim-airline (read README for extra instructions)
"Plugin 'edkolev/tmuxline.vim'
" All the other syntax plugins I use
    Plugin 'ekalinin/Dockerfile.vim'
"Plugin 'digitaltoad/vim-jade'
"Plugin 'tpope/vim-liquid'
"Plugin 'cakebaker/scss-syntax.vim'

"All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
filetype plugin on
filetype on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
" end of Vundle

" Drop Syntastic settings at the end of the config file "
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_error_symbol = '✘'
let g:syntastic_warning_symbol = "▲"
augroup mySyntastic
  au!
  au FileType tex let b:syntastic_mode = "passive"
augroup END

" Start Airline settings

" Show airline for tabs too
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='papercolor'
"let g:airline_theme='oceanicnext'
" air-line
let g:airline_powerline_fonts = 1

" Show PASTE if in paste mode
let g:airline_detect_paste=1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
" end Airline

" Always put status line at the 2nd to last line
set laststatus=2
" Modifying status line look
set statusline=%-(%F%m%r%h%w%)\ %{&ff}/%Y/%{&encoding}\ %=%(@\%03.3b\ %Ll\ %l,%v\ (%p%%)%)

" auto indenting when starting a new line
set smartindent
" copy indent from current line to new line
set autoindent
" line height
set linespace=2
" When the page starts to scroll, keep the cursor # lines from the top and #
" lines from the bottom
set scrolloff=4

set runtimepath+=~/.vim_runtime

" ----- altercation/vim-colors-solarized settings -----
" Toggle this to "light" for light colorscheme
" set background=dark

" Uncomment the next line if your terminal is not codarkred for solarized
"let g:solarized_termcolors=256

set mouse=a

" Set the colorscheme
"colorscheme nord
" colorscheme onedark
" colorscheme material
"let g:material_terminal_italics = 1
"let g:material_theme_style = 'palenight'

" ----- airblade/vim-gitgutter settings -----
" In vim-airline, only display "hunks" if the diff is non-zero
let g:airline#extensions#hunks#non_zero_only = 1

" ----- xolox/vim-easytags settings -----
" Where to look for tags files
set tags=./tags;,~/.vimtags
" Sensible defaults
let g:easytags_events = ['BufReadPost', 'BufWritePost']
let g:easytags_async = 1
let g:easytags_dynamic_files = 2
let g:easytags_resolve_links = 1
let g:easytags_suppress_ctags_warning = 1

" ----- majutsushi/tagbar settings -----
" Open/close tagbar with \b
nmap <silent> <leader>b :TagbarToggle<CR>
" Uncomment to open tagbar automatically whenever possible
"autocmd BufEnter * nested :call tagbar#autoopen(0)

" ----- Raimondi/delimitMate settings -----
"let delimitMate_expand_cr = 1
"augroup mydelimitMate
"  au!
"  au FileType markdown let b:delimitMate_nesting_quotes = ["`"]
"  au FileType tex let b:delimitMate_quotes = ""
"  au FileType tex let b:delimitMate_matchpairs = "(:),[:],{:},`:'"
"  au FileType python let b:delimitMate_nesting_quotes = ['"', "'"]
"augroup END

" ----- jistr/vim-nerdtree-tabs -----
" Open/close NERDTree Tabs with \t
nmap <silent> <leader>t :NERDTreeTabsToggle<CR>
" To have NERDTree always open on startup
let g:nerdtree_tabs_open_on_console_startup = 1

" Indent style
let g:indentLine_char = '┊'

" ALE
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_sign_error = '✘'
let g:ale_sign_warning = '⚠'
let g:ale_lint_on_text_changed = 'never'


source ~/.vim_runtime/vimrcs/basic.vim
source ~/.vim_runtime/vimrcs/filetypes.vim
source ~/.vim_runtime/vimrcs/plugins_config.vim
source ~/.vim_runtime/vimrcs/extended.vim

set backspace=indent,eol,start
set incsearch
set hlsearch
set number              " show line numbers
set ruler               " show where you are
set scrolloff=3         " show context above/below cursorline
set shiftwidth=2        " normal mode indentation commands use 2 spaces
set showcmd
set smartcase           " case-sensitive search if any caps
set softtabstop=2       " insert mode tab and backspace use 2 spaces
set tabstop=8
syntax on

" autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab indentkeys-=0# indentkeys-=<:> foldmethod=indent nofoldenable
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

try
source ~/.vim_runtime/my_configs.vim
catch
endtry
