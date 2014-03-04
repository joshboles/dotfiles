"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Maintained by: Josh Boles
" Last update: 9/18/2012
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vundle Config
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
filetype off                    " required! 
set rtp+=~/.vim/bundle/vundle
call vundle#rc()
" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
filetype plugin indent on       " required!
set autoread                    " Set to auto read when a file is changed from the outside
set wildignore=*.o,*~,*.pyc     " Ignore compiled files
set ruler                       " show line and column number
set backspace=indent,eol,start  " Make backspaces more powerfull
set ignorecase                  " Ignore case when searching
set smartcase                   " When searching, be smart about cases
set showmatch                   " Set matching brackets when text inidicator is over them
set number                      " Show line numbers
set mouse=a                     " Enable mouse for those dark days

set incsearch
set nowrap


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax on                       " syntax highlighting
set hlsearch                    " Highlight search results
colorscheme lucius              " Set color scheme
set gfn=Monaco:h12              " Set font

set nocompatible
set t_Co=256 


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Text, tabs, and indents
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set expandtab                   " Use taps instead of spaces
set tabstop=4                   " use 4 spaces to represent tab
set softtabstop=4
set shiftwidth=4                " number of spaces to use for auto indent
"set textwidth=120              " break lines when line length increases
"set autoindent                 " copy indent from current line when starting a new line
let g:Powerline_symbols = 'fancy'


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Status line
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set laststatus=2                " Always show the status line

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Key Bindings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Close the current buffer
map <leader>bd :Bclose<cr>

" Close all the buffers!
map <leader>ba :1,1000 bd!<cr>  

" Toggle NerdTree
nnoremap <F2> :NERDTreeToggle<CR>

" Toggle Numbers plugin between relative and absolute numberlines
nnoremap <F3> :NumbersToggle<CR>

" Show VIM Buffers
nnoremap <F10> :buffers<CR>:buffer<space>

" CtrlP mappings
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" 'c' - the directory of the current file.
" 'r' - the nearest ancestor that contains one of these directories or files: .git .hg .svn .bzr _darcs
" 'a' - like c, but only if the current working directory outside of CtrlP is not a direct ancestor of the directory of the current file.
" 0 or '' (empty string) - disable this feature.
let g:ctrlp_working_path_mode = 'ra'

" Move a line of text using ALT+[jk] or Comamnd+[jk] on mac
nmap <M-j> mz:m+<cr>`z
nmap <M-k> mz:m-2<cr>`z
vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z"

if has("mac") || has("macunix")
    nmap <D-j> <M-j>
    nmap <D-k> <M-k>
    vmap <D-j> <M-j>
    vmap <D-k> <M-k>
endif

" Line numbering
function! NumberToggle()
  if(&relativenumber == 1)
    set number
  else
    set relativenumber
  endif
endfunc

nnoremap <C-n> :call NumberToggle()<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Utilities
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vundle Configuration and Packages
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Original repos on GitHub
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'Lokaltog/vim-powerline'
Bundle 'scrooloose/nerdtree'
Bundle 'kshenoy/vim-signature'
Bundle 'kien/ctrlp.vim'
" vim-scripts repos

" Non GitHub repos
"Bundle 'git://git.wincent.com/command-t.git'
" 

"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE- comments after Bundle command are not allowed..
