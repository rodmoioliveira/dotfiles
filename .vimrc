" ==========================================================
" Inicial Setup
" ==========================================================

set nocompatible              " be improved, required
filetype off                  " required

" ==========================================================
" Pluglins List and Configuration
" ==========================================================

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Vundle
Plugin 'VundleVim/Vundle.vim'

" Molokai Theme
Plugin 'tomasr/molokai'

" git wrapper
Plugin 'tpope/vim-fugitive'

" Enable surroundins
Plugin 'tpope/vim-surround'

" vim commentary
Plugin 'tpope/vim-commentary'

" A solid language pack for Vim.
Plugin 'sheerun/vim-polyglot'

" status and tabline
Plugin 'vim-airline/vim-airline'

" official theme repository for vim-airline
Plugin 'vim-airline/vim-airline-themes'

" A tree explorer plugin for vim.
Plugin 'scrooloose/nerdtree'

" A tree explorer plugin for vim.
Plugin 'ntpeters/vim-better-whitespace'

" Auto Complete
Plugin 'ycm-core/YouCompleteMe'

" This plugin is used for displaying thin vertical lines at each indentation
Plugin 'Yggdroot/indentLine'

" https://github.com/jeetsukumaran/vim-pythonsense
Plugin 'jeetsukumaran/vim-pythonsense'

" Check syntax in Vim asynchronously and fix files, with Language Server Protocol (LSP) support
Plugin 'w0rp/ale'

call vundle#end()

" enable syntax files load
syntax on

" enable plugins file detection and indenting
filetype plugin indent on

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
" Text width
" ==========================================================
set tw=80
set wrap linebreak

" ==========================================================
" Colors
" ==========================================================

" My color scheme
colorscheme molokai
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
set cindent

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

" ==========================================================
" Config for Ale Linter
" ==========================================================
" Only run linters named in ale_linters settings.
let g:ale_linters_explicit = 1

" keep the sign gutter open at all times
let g:ale_sign_column_always = 1

" Errors signs
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'

" Set this. Airline will handle the rest.
let g:airline#extensions#ale#enabled = 1

" Run linters only when save files
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_insert_leave = 0

" if you don't want linters to run on opening a file
let g:ale_lint_on_enter = 0

" Show 5 lines of errors (default: 10)
let g:ale_list_window_size = 5

" Do not lint or fix minified files.
let g:ale_pattern_options = {
\ '\.min\.js$': {'ale_linters': [], 'ale_fixers': []},
\ '\.min\.css$': {'ale_linters': [], 'ale_fixers': []},
\}

" If you configure g:ale_pattern_options outside of vimrc, you need this.
let g:ale_pattern_options_enabled = 1

