" ==========================================================
" Inicial Setup
" ==========================================================
set nocompatible " be improved, required
"
" ==========================================================
" Pluglins List and Configuration
" ==========================================================
call plug#begin()

" Colors Schemes
Plug 'tomasr/molokai'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'jasoncarr0/sidewalk-colorscheme'
Plug 'kyoto-shift/film-noir'
Plug 'jasoncarr0/sidewalk-colorscheme'
Plug 'lucasprag/simpleblack'
Plug 'theJian/Mogao'
Plug 'sff1019/vim-joker'
Plug 'szorfein/fantasy.vim'
Plug 'zefei/simple-dark'
Plug 'duckwork/low.vim'
Plug 'jaredgorski/fogbell.vim'
Plug 'smallwat3r/vim-simplicity'
Plug 'Michal-Miko/vim-mono-red'
Plug 'smallwat3r/vim-efficient'
Plug 'Resonious/vim-camo'
Plug 'p7g/vim-bow-wob'
Plug 'Jorengarenar/vim-darkness'
Plug 'LuRsT/dvo.vim'
Plug 't184256/vim-boring'
Plug 'igrmk/kull-vim'
Plug 'abnt713/vim-hashpunk'
Plug 'LuRsT/austere.vim'

Plug 'marlun/vim-starwars'
Plug 'fenetikm/falcon' " nice
Plug 'rsidhoum/bushfire'
Plug 'jalvesaq/southernlights'
Plug 'tudurom/bleh.vim'
Plug 'chr4/jellygrass.vim'
Plug 'shattered/vimcolors'

Plug 'zaki/zazen'
Plug 'ryanpcmcquen/true-monochrome_vim'

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
Plug 'neoclide/coc-git', {'do': 'npm install --frozen-lockfile'}

Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }

" Clojure connection to repl
Plug 'Olical/conjure', { 'tag': 'v2.1.0', 'do': 'bin/compile' }

" Linter
Plug 'dense-analysis/ale'

" JsDocs
Plug 'heavenshell/vim-jsdoc'

" Auto Pair
Plug 'jiangmiao/auto-pairs'

" Close tags
Plug 'alvan/vim-closetag'

" Autogenerate tags
Plug 'ludovicchabant/vim-gutentags'

" Autoreoad Change Files
Plug 'djoshea/vim-autoread'

" This plugin will help you read these codes by
" showing different levels of parentheses in different colors.
Plug 'luochen1990/rainbow'

" Flip boolean
Plug 'sagarrakshe/toggle-bool'

" Color hex
Plug 'etdev/vim-hexcolor'

" R
Plug 'jalvesaq/Nvim-R', {'branch': 'stable'}

" fzf fuzzy finder
" https://github.com/junegunn/fzf
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

" https://github.com/junegunn/fzf.vim
Plug 'junegunn/fzf.vim'

call plug#end()

" ==========================================================
" Rainbow
" ==========================================================
let g:rainbow_active = 1 "set to 0 if you want to enable it later via :RainbowToggle

" ==========================================================
" Toogle Bool
" ==========================================================
noremap <leader>r :ToggleBool<CR>

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
set textwidth=80
set wrap linebreak

" ==========================================================
" Spell check and line wrap just for git commit messages
" ==========================================================
autocmd Filetype gitcommit setlocal spelllang=pt spell textwidth=72

" ==========================================================
" When a file has been detected to have been changed outside of Vim and
" it has not been changed inside of Vim, automatically read it again.
" ==========================================================
set autoread

"==========================================================
" Colors
" ==========================================================
colorscheme falcon
let g:airline_theme='violet'

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
" YAML file support
" ==========================================================
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

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
nmap <silent> [x <Plug>(ale_previous_wrap)
nmap <silent> ]x <Plug>(ale_next_wrap)

" Use `:F` to format current buffer
command! -nargs=0 F :call CocAction('format')

" Add status line support, for integration with other plugin, checkout `:h coc-status`
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" ==========================================================
" coc-git
" ==========================================================
" navigate chunks of current buffer
nmap [g <Plug>(coc-git-prevchunk)
nmap ]g <Plug>(coc-git-nextchunk)
" show chunk diff at current position
nmap gs <Plug>(coc-git-chunkinfo)
" create text object for git chunks
omap ig <Plug>(coc-git-chunk-inner)
xmap ig <Plug>(coc-git-chunk-inner)
omap ag <Plug>(coc-git-chunk-outer)
xmap ag <Plug>(coc-git-chunk-outer)"

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

" Clojure linter
let g:ale_linters = {'clojure': ['clj-kondo', 'joker']}

" set to 1, nvim will open the preview window after entering the markdown buffer
" default: 0
let g:mkdp_auto_start = 0

" set to 1, the nvim will auto close current preview window when change
" from markdown buffer to another buffer
" default: 1
let g:mkdp_auto_close = 1

" set to 1, the vim will refresh markdown when save the buffer or
" leave from insert mode, default 0 is auto refresh markdown as you edit or
" move the cursor
" default: 0
let g:mkdp_refresh_slow = 0

" set to 1, the MarkdownPreview command can be use for all files,
" by default it can be use in markdown file
" default: 0
let g:mkdp_command_for_global = 0

" set to 1, preview server available to others in your network
" by default, the server listens on localhost (127.0.0.1)
" default: 0
let g:mkdp_open_to_the_world = 0

" use custom IP to open preview page
" useful when you work in remote vim and preview on local browser
" more detail see: https://github.com/iamcco/markdown-preview.nvim/pull/9
" default empty
let g:mkdp_open_ip = ''

" specify browser to open preview page
" default: ''
let g:mkdp_browser = ''

" set to 1, echo preview page url in command line when open preview page
" default is 0
let g:mkdp_echo_preview_url = 0

" a custom vim function name to open preview page
" this function will receive url as param
" default is empty
let g:mkdp_browserfunc = ''

" options for markdown render
" mkit: markdown-it options for render
" katex: katex options for math
" uml: markdown-it-plantuml options
" maid: mermaid options
" disable_sync_scroll: if disable sync scroll, default 0
" sync_scroll_type: 'middle', 'top' or 'relative', default value is 'middle'
"   middle: mean the cursor position alway show at the middle of the preview page
"   top: mean the vim top viewport alway show at the top of the preview page
"   relative: mean the cursor position alway show at the relative positon of the preview page
" hide_yaml_meta: if hide yaml metadata, default is 1
" sequence_diagrams: js-sequence-diagrams options
" content_editable: if enable content editable for preview page, default: v:false
let g:mkdp_preview_options = {
      \ 'mkit': {},
      \ 'katex': {},
      \ 'uml': {},
      \ 'maid': {},
      \ 'disable_sync_scroll': 0,
      \ 'sync_scroll_type': 'middle',
      \ 'hide_yaml_meta': 1,
      \ 'sequence_diagrams': {},
      \ 'flowchart_diagrams': {},
      \ 'content_editable': v:false
      \ }

" use a custom markdown style must be absolute path
" like '/Users/username/markdown.css' or expand('~/markdown.css')
let g:mkdp_markdown_css = ''

" use a custom highlight style must absolute path
" like '/Users/username/highlight.css' or expand('~/highlight.css')
let g:mkdp_highlight_css = ''

" use a custom port to start server or random for empty
let g:mkdp_port = ''

" preview page title
" ${name} will be replace with the file name
let g:mkdp_page_title = '「${name}」'

let g:LanguageClient_serverCommands = {
      \ 'r': ['R', '--slave', '-e', 'languageserver::run()'],
      \ }

let R_external_term = 11

set conceallevel=0
autocmd FileType markdown let g:indentLine_enabled=0

" ==========================================================
" fzf.vim
" https://github.com/junegunn/fzf.vim#example-advanced-ripgrep-integration
" ==========================================================
nnoremap <silent> <Leader>L :Lines<CR>

function! RipgrepFzf(query, fullscreen)
  let command_fmt = 'rg --column --line-number --no-heading --color=always --smart-case -- %s || true'
  let initial_command = printf(command_fmt, shellescape(a:query))
  let reload_command = printf(command_fmt, '{q}')
  let spec = {'options': ['--phony', '--query', a:query, '--bind', 'change:reload:'.reload_command]}
  call fzf#vim#grep(initial_command, 1, fzf#vim#with_preview(spec), a:fullscreen)
endfunction
command! -nargs=* -bang RG call RipgrepFzf(<q-args>, <bang>0)

" Custom statusline
function! s:fzf_statusline()
  highlight fzf1 ctermfg=161 ctermbg=251
  highlight fzf2 ctermfg=23 ctermbg=251
  highlight fzf3 ctermfg=237 ctermbg=251
  setlocal statusline=%#fzf1#\ >\ %#fzf2#fz%#fzf3#f
endfunction

autocmd! User FzfStatusLine call <SID>fzf_statusline()
