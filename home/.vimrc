set nocompatible
filetype off

call plug#begin('~/.vim/plugged')

" Plug 'wakatime/vim-wakatime'
Plug 'frankier/vim-eve'
Plug 'vim-scripts/pylint.vim'
" Plug 'scrooloose/nerdtree'
" Plug 'craigemery/vim-autotag'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'kchmck/vim-coffee-script'
Plug 'pangloss/vim-javascript'
" Plug 'brookhong/DBGPavim'
" Plug 'Shougo/neocomplcache'
" Plug 'tpope/vim-vinegar'
Plug 'kien/ctrlp.vim'
" Plug 'mru.vim'
" Plug 'taglist.vim'
" Plug 'bling/vim-airline'
Plug 'mattn/emmet-vim'
Plug 'vim-syntastic/syntastic'
" Plug 'davidoc/todo.txt-vim'
" Plug "MarcWeber/vim-addon-mw-utils"
" Plug "tomtom/tlib_vim"
" Plug "garbas/vim-snipmate"
" Plug "honza/vim-snippets"
" Plug 'zenorocha/dracula-theme'
" Plug 'wesleyche/SrcExpl'
" Plug 'wesleyche/Trinity'
Plug 'xsbeats/vim-blade'
Plug 'ardagnir/united-front'
Plug 'editorconfig/editorconfig-vim'
Plug 'Valloric/YouCompleteMe'
" Plug 'raichoo/purescript-vim'
" Plug 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'}
Plug 'vim-airline/vim-airline'
Plug 'tmhedberg/SimpylFold'
Plug 'vim-scripts/indentpython.vim'
Plug 'nvie/vim-flake8'
Plug 'jnurmine/Zenburn'
Plug 'altercation/vim-colors-solarized'

call plug#end()

filetype plugin indent on

" change the mapleader from \ to ,
let mapleader=","

" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

" xdebug
let g:dbgPavimPort=9000
let g:dbgPavimBreakAtEntry=0

set laststatus=2 " Always display the statusline in all windows
set showtabline=2 " Always display the tabline, even if there is only one tab
set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)
set nu

set mouse=a
" set cursorline cursorcolumn
set hidden
set nowrap        " don't wrap lines
set tabstop=4     " a tab is four spaces
set expandtab     " replace tabs with equivalent spaces
set backspace=indent,eol,start " allow backspacing over everything in insert mode
set autoindent    " always set autoindenting on
set copyindent    " copy the previous indentation on autoindenting
" set number        " always show line numbers
set shiftwidth=4  " number of spaces to use for autoindenting
set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'
set showmatch     " set show matching parenthesis
set ignorecase    " ignore case when searching
set smartcase     " ignore case if search pattern is all lowercase,
                  " case-sensitive otherwise
set smarttab      " insert tabs on the start of a line according to shiftwidth, not tabstop
set hlsearch      " highlight search terms
set incsearch     " show search matches as you type

set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo
set wildignore=*.swp,*.bak,*.pyc,*.class
set title                " change the terminal's title
set visualbell           " don't beep
set noerrorbells         " don't beep

set nobackup
set noswapfile

if &t_Co >= 256 || has("gui_running")
    set background=dark
    colorscheme solarized
else
    colorscheme zenburn
endif

call togglebg#map("<F5>")

if &t_Co > 2 || has("gui_running")
	" switch syntax highlighting on, when the terminal has colors
	syntax on
endif

" set list
" set listchars=tab:>.,trail:.,extends:#,nbsp:.
" autocmd filetype html,xml set listchars-=tab:>.

" Paste mode
set pastetoggle=<F2>

" Remap ; to open commands
nnoremap ; :

" Clear current search highlighting
nmap <silent> ,/ :nohlsearch<CR>

" Sudo within vim!
cmap w!! w !sudo tee % >/dev/null

" Open and close all the three plugins on the same time 
nmap <F8>   :TrinityToggleAll<CR> 

" Open and close the srcexpl.vim separately 
nmap <F9>   :TrinityToggleSourceExplorer<CR> 

" Open and close the taglist.vim separately 
nmap <F10>  :TrinityToggleTagList<CR> 

" Open and close the NERD_tree.vim separately 
nmap <F11>  :TrinityToggleNERDTree<CR> 

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

" Python settings
let python_highlight_all=1
au BufNewFile,BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix

" Whitespace violations
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" Character encoding
set encoding=utf-8

" YouCompleteMe customization
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
