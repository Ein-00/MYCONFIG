
set nocompatible
let mapleader = " " 
filetype on
set clipboard=unnamed
filetype plugin on
set background=dark
filetype indent on
if has("termguicolors")
    set termguicolors
endif
syntax on
set cursorline
set number
set shiftwidth=4
set tabstop=4
set expandtab
set nobackup
set t_Co=256
set nowrap
set history=1000
set hlsearch
set showmatch
set showcmd
set ignorecase
set incsearch
set smartcase
set wildmenu
set noerrorbells
set vb t_vb=
filetype plugin indent on
if has("gui_running")
    set guifont=FiraCode_Nerd_Font_Mono:h12
endif 


call plug#begin()
Plug 'junegunn/seoul256.vim'
Plug 'voldikss/vim-floaterm'
Plug 'ayu-theme/ayu-vim'
Plug 'vim-airline/vim-airline'
Plug 'preservim/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'jiangmiao/auto-pairs'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'sheerun/vim-polyglot'
Plug 'ervandew/supertab'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'kien/rainbow_parentheses.vim'
Plug 'dense-analysis/ale'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-vinegar'
call plug#end()
"Mappings"
"Floaterm"
nnoremap <M-i> :FloatermToggle<CR>
imap <M-i> <Esc>:FloatermToggle<CR>
tnoremap <M-i> <C-\><C-n>:FloatermToggle<CR>
"Comments"
nnoremap <M-c> :Commentary<CR>
vnoremap <M-c> :Commentary<CR>
"Autocompletion"
inoremap <Tab> <C-n>
inoremap <S-Tab> <C-p>
"NerdTree"
nnoremap <C-f>:NERDTreeCWD <CR>



"Config"
"Floaterm"
let g:floaterm_shell='pwsh'
hi Floaterm guibg=#1e1e1e
hi FloatermBorder guibg=#5e5e5e guifg=#00ffff
"spaceline"
silent! let g:spaceline_seperate_style = 'arrow'
"Theme"

silent! colorscheme carbonized-dark 
"Airline Theme"
let g:airline_theme='luna' 
"Rainbow parenthesis"
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]
let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 1
