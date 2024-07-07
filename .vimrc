let g:mapleader = " "
let g:maplocalleader = " "
let g:vimtex_view_method = "zathura"
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
" let g:airline#extensions#tabline#buffer_idx_mode = 1
"


nnoremap <leader>h <C-w>h
nnoremap <leader>j <C-w>j
nnoremap <leader>k <C-w>k
nnoremap <leader>l <C-w>l

nnoremap j gj
nnoremap k gk

nnoremap <leader>vs <ESC> :vsplit<CR><C-w>w
nnoremap <leader>hs <ESC> :split<CR><C-w>w
nnoremap <leader>bn :bnext<CR>
nnoremap <leader>bp :bprevious<CR>

nnoremap <leader>b1 :buffer 1<CR>
nnoremap <leader>b2 :buffer 2<CR>
nnoremap <leader>b3 :buffer 3<CR>
nnoremap <leader>b4 :buffer 4<CR>
nnoremap <leader>b5 :buffer 5<CR>
nnoremap <leader>b6 :buffer 6<CR>
nnoremap <leader>b7 :buffer 7<CR>
nnoremap <leader>b8 :buffer 8<CR>
nnoremap <leader>b9 :buffer 9<CR>

noremap <F10> <ESC> :w <CR> :!g++ -std=c++20 -Wall -DONPC -O2 -o %< % && ./%< < inp<CR>
inoremap <F10> <ESC> :w <CR> :!g++ -std=c++20 -Wall -DONPC -O2 -o %< % && ./%< < inp<CR>

autocmd BufWritePost * if expand('%:p') !~# '\.vimrc$' | silent! %s/ / /g | endif

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
set fileencoding=utf-8

let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()

Plug 'mhinz/vim-startify'
Plug 'tpope/vim-commentary'
Plug 'bfrg/vim-cpp-modern'
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
Plug 'rhysd/vim-clang-format'

call plug#end()

syntax enable
set background=dark
let g:gruvbox_italic = '1'
colorscheme gruvbox

autocmd FileType cpp ClangFormatAutoEnable

let g:UltiSnipsExpandTrigger       = '<Tab>'    " use Tab to expand snippets
let g:UltiSnipsJumpForwardTrigger  = '<Tab>'    " use Tab to move forward through tabstops
let g:UltiSnipsJumpBackwardTrigger = '<S-Tab>'  " use Shift-Tab to move backward through tabstops
let g:UltiSnipsSnippetDirectories=["~/.vim/UltiSnips"]

set updatetime=300
set signcolumn=yes

"inoremap <silent><expr> <TAB>
      " \ coc#pum#visible() ? coc#pum#next(1) :
      " \ CheckBackspace() ? "\<Tab>" :
      " \ coc#refresh()
"inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice
"inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
"                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
let g:vimtex_quickfix_ignore_filters = [
      \ 'Underfull',
      \ 'Overfull',
\]
