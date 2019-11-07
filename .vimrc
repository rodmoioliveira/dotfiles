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
Plug 'jasoncarr0/sidewalk-colorscheme'

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

" https://github.com/jeetsukumaran/vim-pythonsense
Plug 'jeetsukumaran/vim-pythonsense'

" Coc is an intellisense engine for vim8 & neovim.
Plug 'neoclide/coc.nvim', {'do': 'npm install --frozen-lockfile'}
Plug 'neoclide/coc-snippets', {'do': 'npm install --frozen-lockfile'}
Plug 'neoclide/coc-tsserver', {'do': 'npm install --frozen-lockfile'}
Plug 'neoclide/coc-prettier', {'do': 'npm install --frozen-lockfile'}
Plug 'neoclide/coc-eslint', {'do': 'npm install --frozen-lockfile'}
Plug 'neoclide/coc-css', {'do': 'npm install --frozen-lockfile'}
Plug 'neoclide/coc-highlight', {'do': 'npm install --frozen-lockfile'}

" Clojure connection to repl
Plug 'Olical/conjure', { 'tag': 'v2.1.0', 'do': 'bin/compile' }

" JsDocs
Plug 'heavenshell/vim-jsdoc'

" Auto Pair
Plug 'jiangmiao/auto-pairs'

" Path Finder
Plug 'kien/ctrlp.vim'

" Path Finder
Plug 'alvan/vim-closetag'

" Autogenerate tags
Plug 'ludovicchabant/vim-gutentags'

" Autoreoad Change Files
Plug 'djoshea/vim-autoread'

" This plugin will help you read these codes by
" showing different levels of parentheses in different colors.
Plug 'luochen1990/rainbow'

call plug#end()

" ==========================================================
" Rainbow
" ==========================================================
let g:rainbow_active = 1 "set to 0 if you want to enable it later via :RainbowToggle

" ==========================================================
" Abbreviations
" ==========================================================

" ==========================================================
" Find new search team
" ==========================================================
nnoremap <C-S-Left> :cp<CR>
nnoremap <C-S-Right> :cn<CR>

" ==========================================================
" Sort Css Brace Content
" ==========================================================
:command! SortCSS :g#\({\n\)\@<=#.,/}/sort

" ==========================================================
" Change tabs
" ==========================================================
nnoremap <C-Right> :tabnext<CR>
nnoremap <C-Left> :tabprevious<CR>

" ==========================================================
" Text width
" ==========================================================
set tw=80
set wrap linebreak

" ==========================================================
" When a file has been detected to have been changed outside of Vim and
" it has not been changed inside of Vim, automatically read it again.
" ==========================================================
set autoread

"==========================================================
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
set wildignore=*/node_modules/*,*/tmp/*,tags,*.jpg,*.png,*.pyc,*.min.js,*/dist/*

" F4 seach in vimgrep mode
:map <F4> :execute "vimgrep /" . expand("<cword>") . "/j **"<Bar>cw<CR>

" ==========================================================
" CtrlP Config
" ==========================================================
" Show hidden files
let g:ctrlp_show_hidden = 1

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
" :Prettier format file
" ==========================================================
command! -nargs=0 Prettier :CocCommand prettier.formatFile

" ==========================================================
" Coc Configurations
" ==========================================================
" if hidden is not set, TextEdit might fail.
set hidden

" Some servers have issues with backup files, see #649
set nowritebackup

" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Use `[c` and `]c` to navigate diagnostics
nmap <silent> [c <Plug>(coc-diagnostic-prev)
nmap <silent> ]c <Plug>(coc-diagnostic-next)

" Use `:F` to format current buffer
command! -nargs=0 F :call CocAction('format')

" Add status line support, for integration with other plugin, checkout `:h coc-status`
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" ==========================================================
" vim-closetag
" ==========================================================
" filenames like *.xml, *.html, *.xhtml, ...
" These are the file extensions where this plugin is enabled.
let g:closetag_filenames = '*.html,*.xhtml,*.phtml'

" filenames like *.xml, *.xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx,*.js'

" filetypes like xml, html, xhtml, ...
" These are the file types where this plugin is enabled.
let g:closetag_filetypes = 'html,xhtml,phtml,htmldjango'

" filetypes like xml, xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
" let g:closetag_xhtml_filetypes = 'xhtml'

" integer value [0|1]
" This will make the list of non-closing tags case-sensitive (e.g. `<Link>` will be closed while `<link>` won't.)
let g:closetag_emptyTags_caseSensitive = 1

" dict
" Disables auto-close if not in a "valid" region (based on filetype)
let g:closetag_regions = {
    \ 'typescript.tsx': 'jsxRegion,tsxRegion',
    \ 'javascript.jsx': 'jsxRegion',
    \ }

" Shortcut for closing tags, default is '>'
let g:closetag_shortcut = '>'

" Add > at current position without closing the current tag, default is ''
let g:closetag_close_shortcut = '<leader>>'
