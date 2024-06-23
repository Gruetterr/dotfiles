let g:mapleader = " "
let g:maplocalleader = " "
let g:vimtex_view_method = "skim"
let g:airline_powerline_fonts = 1

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l


noremap <F10> <ESC> :w <CR> :!g++ -fsanitize=address -std=c++20 -Wall -DONPC -O2 -o %< % && ./%< < inp<CR>
inoremap <F10> <ESC> :w <CR> :!g++ -fsanitize=address -std=c++20 -Wall -DONPC -O2 -o %< % && ./%< < inp<CR>

set tabstop=2
set backspace=2
set showcmd
set laststatus=2
set autowrite
set cursorline
set autoread
set shiftwidth=2
set shiftround
set expandtab
set number
set noshowmode
set termguicolors

filetype on
filetype plugin on
filetype indent on

set encoding=utf-8

let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()

"Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'ryanoasis/vim-devicons'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'nordtheme/vim'
Plug 'preservim/nerdtree'
Plug 'morhetz/gruvbox'
Plug 'SirVer/ultisnips'
Plug 'vim-airline/vim-airline'
Plug 'lervag/VimTex'
Plug 'jiangmiao/auto-pairs'
Plug 'cocopon/iceberg.vim'
Plug 'nordtheme/vim'

call plug#end()

syntax enable
colorscheme nord

let g:UltiSnipsExpandTrigger       = '<Tab>'    " use Tab to expand snippets
let g:UltiSnipsJumpForwardTrigger  = '<Tab>'    " use Tab to move forward through tabstops
let g:UltiSnipsJumpBackwardTrigger = '<S-Tab>'  " use Shift-Tab to move backward through tabstops
let g:UltiSnipsSnippetDirectories=["~/.vim/UltiSnips"]

set updatetime=300
set signcolumn=yes

inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
let g:vimtex_quickfix_ignore_filters = [
      \ 'Underfull',
      \ 'Overfull',
\]
