set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

Bundle 'scrooloose/nerdtree'
Bundle 'craigemery/vim-autotag'
Bundle 'tpope/vim-fugitive'
Bundle 'kchmck/vim-coffee-script'
Bundle 'pangloss/vim-javascript'
Bundle 'brookhong/DBGPavim'
Bundle 'Shougo/neocomplcache'
Bundle 'tpope/vim-vinegar'
Bundle 'YankRing.vim'
Bundle 'kien/ctrlp.vim'
Bundle 'mru.vim'
Bundle 'taglist.vim'
Bundle 'bling/vim-airline'
Bundle 'mattn/emmet-vim'
Bundle 'Syntastic'
Bundle 'davidoc/todo.txt-vim'
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "garbas/vim-snipmate"
Bundle "honza/vim-snippets"
Bundle 'evidens/vim-twig'
" Bundle 'Valloric/YouCompleteMe'

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
	colorscheme github
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
