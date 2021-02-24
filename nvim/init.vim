" ------------------------------- General Settings -------------------------------
set t_Co=256
filetype plugin on
syntax on
syntax enable " allows syntax coloring
set tabstop=4
set shiftwidth=4
set expandtab
"set softtabstop=4 set number " Makes line numbers
set wildmenu " Gives command mode autocompletion
"set smartindent " deprecated
set nowrap " Stops wrapping
set number
set incsearch " Highlights as you search
set undodir=~/.vim/undodir " Makes undo directory
set undofile " Allows undo tree
"set termguicolors " Makes some words very RED in color
set noswapfile " Prevents swap files from being created set noshowmode " Removes more ugliness at bottom of vim
set encoding=utf-8

" --------------------------------- Plugins -----------------------------------------
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/syntastic' " Checks for syntax errors
Plug 'itchyny/lightline.vim' " Makes line at bottom of screen that shows current mode nicer
Plug 'luochen1990/rainbow' " Color codes brackets
Plug 'jiangmiao/auto-pairs' " Gets the close paretheses for the opening one
Plug 'miyakogi/conoline.vim' " Adds a line that highlights the current line
Plug 'ycm-core/YouCompleteMe' " auto completion
Plug 'junegunn/goyo.vim' " puts text at center of terminal
Plug '907th/vim-auto-save' " auto saves files
Plug 'dylanaraps/wal' " auto change colorscheme with pywal
call plug#end()

let g:rainbow_active = 1 " Part of the rainbow paren plugin

" --------------------- Mapping controls --------------------------
" Cnoremap applies to command mode
" Inoremap applies to insert mode

nnoremap <silent> <C-m> :Goyo<CR>

" Changes Esc key to kj
inoremap kj <Esc>
"

" Move in insert mode using Alt keys
inoremap <A-h> <C-o>h
inoremap <A-j> <C-o>j
inoremap <A-k> <C-o>k
inoremap <A-l> <C-o>l

"auto start nerdtree
"autocmd VimEnter * NERDTree

let g:auto_save = 1 " enable autosave on startup

" ----------------------- Colorschemes ------------------------------
" Gruvbox retro theme (my fav)
"colorscheme gruvbox
"set background=dark
colorscheme wal

" Stuff for lightline at bottom that shows mode
let g:lightline = {
\ 'colorscheme': 'wombat',
\ }

let g:lightline = {
\ 'component_function': {
\   'readonly': 'LightlineReadonly',
\ },
\ }

function! LightlineReadonly()
  return &readonly && &filetype !=# 'help' ? 'RO' : ''
  endfunction

let g:clang_library_path='/usr/lib64/libclang.so.11.1'
"let g:ycm_global_ycm_extra_conf = '/home/jbcallv/.vim/plugged/YouCompleteMe/third_party/ycmd/.ycm_extra_conf.py'


" ---------------------- Indent Visualizer ---------------------------
let g:indentLine_setColors = 0
let g:indentLine_concealcursor = 'inc'
let g:indentLine_conceallevel = 2

" ---------------------- Transparent background ----------------------
"hi! Normal ctermbg=NONE guibg=NONE
"hi! Insert ctermbg=NONE guibg=NONE

" ---------------------- Copy/Paste -----------------------------------
