" ==========================================================
" Inicial Setup
" ==========================================================
set nocompatible              " be improved, required

" ==========================================================
" Pluglins List and Configuration
" ==========================================================
call plug#begin()

" Colors Schemes
Plug 'tomasr/molokai'
Plug 'rafi/awesome-vim-colorschemes'

" git wrapper
Plug 'tpope/vim-fugitive'

" Enable surroundins
Plug 'tpope/vim-surround'

" vim commentary
Plug 'tpope/vim-commentary'

" A solid language pack for Vim.
Plug 'sheerun/vim-polyglot'

" status and tabline
Plug 'vim-airline/vim-airline'

" official theme repository for vim-airline
Plug 'vim-airline/vim-airline-themes'

" A tree explorer plugin for vim.
Plug 'scrooloose/nerdtree'

" A tree explorer plugin for vim.
Plug 'ntpeters/vim-better-whitespace'

" This plugin is used for displaying thin vertical lines at each indentation
Plug 'Yggdroot/indentLine'

" Prettier formmating
Plug 'prettier/vim-prettier'

" Coc is an intellisense engine for vim8 & neovim.
Plug 'neoclide/coc.nvim', {'do': 'npm install --frozen-lockfile'}

call plug#end()

" ==========================================================
" Map for indenting all file
" ==========================================================
nnoremap <F2> G1=G<CR>

" ==========================================================
" Abbreviations
" ==========================================================
iab == ==========================================================

" ==========================================================
" Find new search team
" ==========================================================
nnoremap <C-S-Left> :cp<CR>
nnoremap <C-S-Right> :cn<CR>

" ==========================================================
" Change tabs
" ==========================================================
nnoremap <C-Right> :tabnext<CR>
nnoremap <C-Left> :tabprevious<CR>

" ==========================================================
" Text width
" ==========================================================
set tw=80
" set wrap linebreak

" ==========================================================
" Colors
" ==========================================================
" My color scheme
colorscheme afterglow
let g:airline_theme='molokai'

" ==========================================================
" Spaces and Tabs
" ==========================================================
" Set tabs
set tabstop=2 shiftwidth=2 softtabstop=2

" tabs are spaces
set expandtab

" ==========================================================
" File Types Indenting Config
" ==========================================================
" turns autoindent on
set autoindent

" does the right thing (mostly) in programs
set smartindent

" stricter rules for C programs
" set cindent

" ==========================================================
" UI Config
" ==========================================================
" show command in bottom bar
set showcmd

" highlight current line
set cursorline

" visual autocomplete for command menu
set wildmenu

" redraw only when we need to.
set lazyredraw

" highlight matching [{()}]
set showmatch

" show line numbers
set number relativenumber
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

" Always show current position
set ruler

" Height of the command bar
set cmdheight=2

" Add a bit extra margin to the left
set foldcolumn=1

" ==========================================================
" NERDTree - Initial Setup
" ==========================================================
" autocmd vimenter * NERDTree
nmap <F6> :NERDTreeToggle<CR>

" ==========================================================
" Searching
" ==========================================================
" search as characters are entered
set incsearch

" highlight matches
set hlsearch

" Space remove highlight serch
nnoremap <space> :nohlsearch<CR>  " ,<space> close highlight

" Remove directories from search
set wildignore=*/node_modules/*,*/tmp/*

" ==========================================================
" Backspace Behavior
" ==========================================================
" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Show matching brackets when text indicator is over them
set showmatch

" How many tenths of a second to blink when matching brackets
set mat=2

" ==========================================================
" Remove white space on save
" ==========================================================
autocmd BufWritePre * %s/\s\+$//e

" ==========================================================
" Folds Config
" ==========================================================
" enable folding
set foldenable

" open most folds by default
set foldlevelstart=10

" 10 nested fold max
set foldnestmax=10

" fold based on indent level
set foldmethod=syntax

" ==========================================================
" Errors Config
" ==========================================================
" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" ==========================================================
" Backup Config
" ==========================================================
" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile

