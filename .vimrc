" Install vim-plug if not found
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Specify a directory for plugins
call plug#begin('~/.vim/plugged')

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align - Plug 'junegunn/vim-easy-align'
" Any valid git URL is allowed - Plug 'https://github.com/junegunn/vim-github-dashboard.git'
" Multiple Plug commands can be written in a single line using | separators - Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
" On-demand loading - Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }  - Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

Plug 'tpope/vim-sensible'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ajmwagar/vim-deus'
Plug 'vim-scripts/indentpython.vim'
Plug 'kien/ctrlp.vim'
Plug 'tpope/vim-fugitive'

" Initialize plugin system
call plug#end()

" Set color
colors deus

" Map NERDTree to keybind
map <F2> :NERDTreeToggle<CR>

" Open NERDTree if no files present
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Split all the things
" Ctrl-j move to the split below
" Ctrl-k move to the split above
" Ctrl-l move to the split to the right
" Ctrl-h move to the split to the left
set splitbelow
set splitright
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Get ready for some Python
au BufNewFile,BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix

" Get ready for everything else
au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2
