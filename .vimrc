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
Plug 'rafi/awesome-vim-colorschemes'
Plug 'posva/vim-vue'

" Initialize plugin system
call plug#end()

" Set color
colorscheme angr

" Set defaults
set number
set wrap!

" Map NERDTree to keybind
map <C-n> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1

" Ignore files that we don't want shown in NERDTree or CtrlP
let NERDTreeIgnore=['\.pyc$', 'node_modules', '\.vscode$','\.idea$']
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

" Open NERDTree if no files present
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

let NERDTreeQuitOnOpen = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

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
autocmd Filetype python setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4 autoindent fileformat=unix

" Get ready for everything else
au BufNewFile,BufRead *.js,*.html,*.css set tabstop=2 softtabstop=2 shiftwidth=2
