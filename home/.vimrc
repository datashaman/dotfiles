set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
" required!
Plugin 'gmarik/Vundle.vim'

" Plugin 'scrooloose/nerdtree'
" Plugin 'craigemery/vim-autotag'
Plugin 'tpope/vim-fugitive'
Plugin 'kchmck/vim-coffee-script'
Plugin 'pangloss/vim-javascript'
Plugin 'brookhong/DBGPavim'
" Plugin 'Shougo/neocomplcache'
" Plugin 'tpope/vim-vinegar'
Plugin 'kien/ctrlp.vim'
" Plugin 'mru.vim'
" Plugin 'taglist.vim'
" Plugin 'bling/vim-airline'
Plugin 'mattn/emmet-vim'
Plugin 'Syntastic'
" Plugin 'davidoc/todo.txt-vim'
" Plugin "MarcWeber/vim-addon-mw-utils"
" Plugin "tomtom/tlib_vim"
" Plugin "garbas/vim-snipmate"
" Plugin "honza/vim-snippets"
" Plugin 'zenorocha/dracula-theme'
Plugin 'wesleyche/SrcExpl'
Plugin 'wesleyche/Trinity'
Plugin 'xsbeats/vim-blade'
Plugin 'ardagnir/united-front'
" Plugin 'Valloric/YouCompleteMe'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on

" change the mapleader from \ to ,
let mapleader=","

" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

" xdebug
let g:dbgPavimPort=9000
let g:dbgPavimBreakAtEntry=0

set mouse=a
set cursorline cursorcolumn
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
	colorscheme desert
endif

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

let g:dbgPavimPort = 9009
let g:dbgPavimBreakAtEntry = 0
