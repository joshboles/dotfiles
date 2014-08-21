set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'airblade/vim-gitgutter'
Plugin 'bling/vim-airline'
Plugin 'jonathanfilip/vim-lucius'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
" Plugin 'scrooloose/syntastic.git'
Plugin 'tpope/vim-fugitive'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set autoread                    " Set to auto read when a file is changed from the outside
set wildignore=*.o,*~,*.pyc     " Ignore compiled files
set ruler                       " show line and column number
set backspace=indent,eol,start  " Make backspaces more powerfull
set ignorecase                  " Ignore case when searching
set smartcase                   " When searching, be smart about cases
set showmatch                   " Set matching brackets when text inidicator is over them
set number                      " Show line numbers
"set mouse=a                     " Enable mouse for those dark days

set incsearch
set nowrap

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Colors and Fonts
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax on                       " syntax highlighting
set hlsearch                    " Highlight search results
set nocompatible
set t_Co=256
set gfn=Courier:h12              " Set font
set background=dark
colorscheme lucius

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Text, tabs, and indents
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set expandtab                   " Use taps instead of spaces
set tabstop=4                   " use 4 spaces to represent tab
set softtabstop=4
set shiftwidth=4                " number of spaces to use for auto indent

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Key Bindings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Toggle NerdTree
nnoremap <F2> :NERDTreeToggle<CR>

" CtrlP mappings
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Utilities
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 'c' - the directory of the current file.
" 'r' - the nearest ancestor that contains one of these directories or
" files: .git .hg .svn .bzr _darcs
" 'a' - like c, but only if the current working directory outside of CtrlP
" is not a direct ancestor of the directory of the current file.
" 0 or '' (empty string) - disable this feature.
let g:ctrlp_working_path_mode = 'ra'

set nobackup
set noswapfile

let g:syntastic_check_on_open=1
let g:syntastic_enable_signs=1
