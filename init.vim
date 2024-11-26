
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
set visualbell

set guifont=FiraCode_Nerd_Font:h12
call plug#begin()
" List your plugins here
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-vinegar'
Plug 'dense-analysis/ale'
Plug 'numToStr/Comment.nvim'
Plug 'ervandew/supertab'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdtree'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'akinsho/bufferline.nvim', { 'tag': '*' }
Plug 'kien/rainbow_parentheses.vim'
Plug 'nvim-lualine/lualine.nvim'
Plug 'akinsho/toggleterm.nvim', {'tag' : '*'}
Plug 'nvzone/volt'
Plug 'nvzone/timerly'
call plug#end()

colorscheme carbonized-dark 

"Rainbow parenthesis"
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
set termguicolors
lua << EOF
require('Comment').setup{}
require("toggleterm").setup{
  shell="pwsh",  
  size = 20,                
  open_mapping = [[<c-\>]],
  direction = 'float',  
  on_open = function(term)  -- Function to run when the terminal opens
    vim.cmd("startinsert")  -- Start in insert mode
    vim.cmd("lcd " .. vim.fn.getcwd()) -- Set terminal's local cwd to the current buffer's cwd
  end,
  float_opts={
    border= 'curved',
    title_pos='center'
  },
  winbar ={
    enabled=true,
  },
  highlights ={
    FloatBorder ={
        guifg='#42f5c5',
    },

  },
}
require("bufferline").setup{}
require("lualine").setup{
options = {
    theme = 'codedark'
    }
}
EOF

"Mappings"
"Floaterm"
nnoremap <A-t> :TimerlyToggle <CR>
imap <M-i> <Esc>:FloatermToggle<CR>
"tnoremap <M-i> <C-\><C-n>:FloatermToggle<CR>"
"Comments"
nnoremap <M-c> :Commentary<CR>
vnoremap <M-c> :Commentary<CR>
"Autocompletion"
inoremap <Tab> <C-n>
inoremap <S-Tab> <C-p>
"NerdTree"
nnoremap <C-f>:NERDTreeCWD <CR>
"Tabbing"
nnoremap <A-1> :tabn 1<CR>
nnoremap <A-2> :tabn 2<CR>
nnoremap <A-3> :tabn 3<CR>
nnoremap <A-4> :tabn 4<CR>
nnoremap <A-5> :tabn 5<CR>
nnoremap <A-6> :tabn 6<CR>

inoremap <A-1> <C-o>:tabn 1<CR>
inoremap <A-2> <C-o>:tabn 2<CR>
inoremap <A-3> <C-o>:tabn 3<CR>
inoremap <A-4> <C-o>:tabn 4<CR>
inoremap <A-5> <C-o>:tabn 5<CR>
inoremap <A-6> <C-o>:tabn 6<CR>


if exists("g:neovide")
    let g:neovide_transparency = 0.81
    let g:neovide_floating_corner_radius = 0.5
    let g:neovide_floating_shadow = v:true
endif



