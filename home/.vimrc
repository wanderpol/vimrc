"""""""""""""""""""""""""""""""""""""""
"" ViM configuration options.
"" 
"" This took days of tweaking, testing and playing with.
"" But I feel open enough to share the tools I use every day.
"""""""""""""""""""""""""""""""""""""""
set nocompatible                      " Vi Improved!

filetype off                          " We'll check file types later.
syntax on                             " Each language has its own syntax; respect it!

let mapleader=","                     " Let the leader be a comma!
set background=dark
set tabstop=2                         " My tab are lean, mean and two spaces.
set shiftwidth=2                      " Autoindent by two spaces automagically.
set expandtab ts=2 sw=2 ai            " Expands tabs into spaces with some intelligence and two spaces.
set autoindent                        " Turn on autoindenting.
set number                            " Force line numbers.
set showmatch                         " Match brackets."
set encoding=utf-8                    " We ♥ UTF-8 stuff.
set softtabstop=2                     " Gently remove space when hitting backspace."
set hidden                            " Don't close tabs, instead hide them.
set wrap
set textwidth=78                      " Set the width of visible text.
set formatoptions=tcrqwnj
set foldmethod=syntax                 " Fold code according to syntax."
set foldcolumn=4                      " Give the folding symbol 4 columns."
set foldminlines=50                   " Don't fold anything less than 50 lines."
set history=1000                      " The memory should be big, so keep a big history."
set undolevels=1000                   " Be ready to undo that bug."
set wildignore=*.swp,*.pyc,*.bak,*.class
set title
set visualbell
set noerrorbells
set nobackup
set noswapfile
set ruler                             " Be a MAN! and know where you are."
set smartcase                         " ignore case if search pattern is all lowercase,
set smarttab                          " insert tabs according to shiftwidth not tabstop"
set scrolloff=4                       " Only go 4 lines past the end."
set hlsearch                          " Show me what I'm searching for."
set incsearch                         " Over time, make my search continue."
set gdefault                          " I'm human, so of course my regexs are /g by nature."
set nolist
set pastetoggle=<F2>
set mouse=a
set spell spelllang=en_us
set fileformats=unix
set formatoptions+=1

let mapleader=","                     " Let the leader be a comma!

nnoremap ; :  "" One less key to press.

nmap <silent> <leader>ev :e ~/.vimrc<cr>  " Edit my Vim configuration.
nmap <silent> <leader>sv :so ~/.vimrc<cr>  " Reload my Vim configuration.
nnoremap <silent> <C-l> :nohlsearch<CR><C-l>
nnoremap <silent> <F10> :NERDTreeToggle<CR>
nnoremap <silent> <leader>z :CommandT<CR>  " Come to me, Command-T!"
nnoremap <silent> <leader>a :CommandTBuffer<CR> "Show me the currents."
nnoremap <silent> <leader><F3> :tabp
nnoremap <silent> <leader><F7> :tabn
noremap <silent> <F7> :Autoformat<CR><CR>
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

"" Toggle show/hide invisible chars
nnoremap <leader>i :set list!<cr>

"" Set up Vundle.
set rtp+=~/.vim/bundle/vundle
call vundle#rc()

"" Bundles used in the system.
Bundle 'gmarik/vundle'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-git'
Bundle 'tpope/vim-bundler'
Bundle 'tpope/vim-unimpaired'
Bundle 'tpope/vim-markdown'
Bundle 'tpope/vim-cucumber'
Bundle 'JSON.vim'
Bundle 'othree/html5.vim'
Bundle 'ecomba/vim-ruby-refactoring'
Bundle 'othree/html5.vim'
Bundle 'ecomba/vim-ruby-refactoring'
Bundle 'mileszs/apidock.vim'
Bundle 'sjl/gundo.vim'
Bundle 'mileszs/apidock.vim'
Bundle 'sjl/gundo.vim'
Bundle 'Indent-Guides'
Bundle 'Valloric/YouCompleteMe'
Bundle 'kchmck/vim-coffee-script'
Bundle 'Align'
Bundle 'jQuery'
Bundle 'L9'
Bundle 'jamessan/vim-gnupg'
Bundle 'gmarik/github-search.vim'
Bundle 'DfrankUtil'
Bundle 'FuzzyFinder'
Bundle 'scrooloose/nerdcommenter'
Bundle 'astashov/vim-ruby-debugger'
Bundle 'jpalardy/vim-slime'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/syntastic'
Bundle 'wincent/Command-T'
Bundle 'cmake.vim'
Bundle 'localrc.vim'
Bundle 'YankRing.vim'
Bundle 'taglist.vim'
Bundle 'tsaleh/vim-align'
Bundle 'greplace.vim'
Bundle 'Bogdanp/pyrepl.vim'
Bundle 'tpope/vim-cucumber'
Bundle 'pferdefleisch/sass.snippet'
Bundle 'lepture/vim-css'
Bundle 'benmills/vimux'
Bundle 'majutsushi/tagbar'
Bundle 'alfredodeza/jacinto.vim'
Bundle 'mattn/gist-vim'
Bundle 'mattn/webapi-vim'
Bundle 'Chiel92/vim-autoformat'

" Activate plugin detection now.
filetype plugin indent on
filetype on

"" Options for Syntastic!
" let g:syntastic_check_on_open=1
" let g:syntastic_enable_signs=1
" let g:syntastic_error_symbol='✗'
" let g:syntastic_warning_symbol='⚠'
" let g:syntastic_enable_ballons=1
" let g:syntastic_enable_highlighting=1
let g:CommandTMaxHeight=6
let g:CommandTMatchWindowAtTop=1
 
